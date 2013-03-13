# clean up
Entry.destroy_all

user_ids = %w(
  123
  456
  789
)

action_types = %w(
  log-in
  log-out
  news-article-create
  news-article-update
  page-create
  page-update
  game-create
  game-update
  game-score
)

def metadata(action_type)
  case action_type
  when /page/, /game/, /news-article/
    {id: rand(1000)}
  else
    {}
  end
end

1000.times do
  action_type = action_types.sample
  user_id = user_ids.sample
  happened_at = rand(500000).minutes.ago

  Entry.create!({
    user_id: user_id,
    action_type: action_type,
    metadata: metadata(action_type),
    happened_at: happened_at,
  })
end
