json.extract! prospect, :id, :first_name, :middle_name, :last_name, :email, :phone, :notes, :zip, :agent_id, :created_at, :updated_at
json.url prospect_url(prospect, format: :json)