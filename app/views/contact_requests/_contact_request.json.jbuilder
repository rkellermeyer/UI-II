json.extract! contact_request, :id, :first_name, :last_name, :email, :subject, :message, :created_at, :updated_at
json.url contact_request_url(contact_request, format: :json)