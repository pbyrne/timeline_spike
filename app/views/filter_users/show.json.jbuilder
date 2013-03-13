# FIXME there has to be a better way to render this than copypasta on entries/index.html.jbuilder
json.array!(@entries) do |entry|
  json.extract! entry, :user_id, :action_type, :happened_at, :metadata
  json.url entry_url(entry, format: :json)
end
