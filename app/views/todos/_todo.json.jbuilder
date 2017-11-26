json.extract! todo, :id, :user_id, :title, :description, :end_date, :created_at, :updated_at
json.url todo_url(todo, format: :json)
