json.extract! list_of_waterfall, :id, :name, :height, :locality, :country, :description, :created_at, :updated_at
json.url list_of_waterfall_url(list_of_waterfall, format: :json)
