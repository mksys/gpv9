json.extract! race_detail, :id, :number, :round, :total_laps, :year, :race_name, :race_name_gp, :circuit, :circuit_length, :race_date_on, :created_at, :updated_at
json.url race_detail_url(race_detail, format: :json)
