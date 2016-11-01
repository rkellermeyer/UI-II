require 'patent_actions'
class PatentSearch < ActiveRecord::Base
  def search_results
    query = PatentActions.new
    query.search(self.terms, self.fields, {})
  end
end
