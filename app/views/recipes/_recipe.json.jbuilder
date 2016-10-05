json.extract! recipe, :id, :title, :ingredients, :author, :category, :directions, :notes, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)