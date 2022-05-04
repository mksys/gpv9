json.extract! current_race, :id, :race_number, :created_at, :updated_at
json.url current_race_url(current_race, format: :json)
