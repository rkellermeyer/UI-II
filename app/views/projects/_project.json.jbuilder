json.extract! project, :id, :project_type_id, :title, :category_id, :created_at, :updated_at
json.url project_url(project, format: :json)