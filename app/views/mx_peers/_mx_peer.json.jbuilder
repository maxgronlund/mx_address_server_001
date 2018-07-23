json.extract! mx_peer, :id, :url, :ip, :first_seen, :last_seen, :response_time, :node_type, :distance, :uuid, :trust, :created_at, :updated_at
json.url mx_peer_url(mx_peer, format: :json)
