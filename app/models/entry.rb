class Entry < ActiveRecord::Base
  scope :user_ids, select(:user_id).uniq
  scope :action_types, select(:action_type).uniq

  def self.recent(limit=50)
    order("happened_at desc").limit(limit)
  end

  def self.by_user(user_id)
    where(user_id: user_id)
  end

  def self.by_action_type(action_type)
    where(action_type: action_type)
  end
end
