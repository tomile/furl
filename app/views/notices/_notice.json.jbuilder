json.extract! notice, :id, :referral_id, :agent_receiving_id, :commission, :status, :created_at, :updated_at
json.url notice_url(notice, format: :json)