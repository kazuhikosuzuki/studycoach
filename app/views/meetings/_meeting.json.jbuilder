json.extract! meeting, :id, :category, :start_time, :finish_time, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
