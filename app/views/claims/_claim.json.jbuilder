json.extract! claim, :id, :answer, :user_id, :journey_id, :created_at, :updated_at
json.url claim_url(claim, format: :json)