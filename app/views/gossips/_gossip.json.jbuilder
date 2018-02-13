json.extract! gossip, :id, :content, :user_id, :created_at, :updated_at
json.url gossip_url(gossip, format: :json)
