class Entry < ActiveRecord::Base
  scope :user_ids, select(:user_id).uniq
  scope :recent, order("happened_at desc").limit(40)

  def self.by_user(user_id)
    where(user_id: user_id)
  end
end
