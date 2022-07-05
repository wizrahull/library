json.extract! novel, :id, :name, :pages, :author_id, :created_at, :updated_at
json.url novel_url(novel, format: :json)
