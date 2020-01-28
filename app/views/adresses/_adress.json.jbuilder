json.extract! adress, :id, :name, :city_id, :lat, :lng, :created_at, :updated_at
json.url adress_url(adress, format: :json)
