json.extract! referral, :id, :agent_sending_id, :agent_receiving_id, :prospect_id, :status, :created_at, :updated_at
json.url referral_url(referral, format: :json)