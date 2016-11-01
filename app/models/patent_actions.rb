require 'net/http'
require 'uri'
require 'json'

class PatentActions

  def initialize
    @uri = URI.parse('https://pbd-prod-elb.uspto.gov/api/queries')
    @request = Net::HTTP::Post.new(@uri)
    @request.content_type = 'application/json'
    @request['Accept'] = 'application/json'
  end

  def search(terms, field, options = {})
    @request.body = JSON.dump({ searchText: terms, qf: field})

    response = Net::HTTP.start(@uri.hostname, @uri.port, use_ssl: @uri.scheme == 'https') do |http|
      http.request(@request)
    end

    @code = response.code
    res = JSON.parse(response.body)

    {
      results: res['queryResults']['searchResponse']['response']['docs'],
      count: res['queryResults']['searchResponse']['response']['numFound']
    }
  end
end