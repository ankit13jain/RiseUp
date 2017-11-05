json.extract! user_activity, :id, :activity_type, :activity_start_time, :activity_end_time, :fundraised, :distance, :noofsteps, :created_at, :updated_at
json.url user_activity_url(user_activity, format: :json)
