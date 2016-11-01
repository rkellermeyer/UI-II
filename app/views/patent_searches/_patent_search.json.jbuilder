json.extract! patent_search, :id, :terms, :fields, :user_id, :results_doc_id, :created_at, :updated_at
json.url patentAction_url(patent_search, format: :json)