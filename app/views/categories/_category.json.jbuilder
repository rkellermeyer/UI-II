json.extract! category, :id, :name, :description, :category_type_id, :uspto_code, :ipc_code, :cpc_code, :active, :parent_id, :created_at, :updated_at
json.url category_url(category, format: :json)