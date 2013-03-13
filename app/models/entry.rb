class Entry < ActiveRecord::Base
  default_scope order("happened_at desc")
  scope :user_ids, select(:user_id).uniq
  scope :action_types, select(:action_type).uniq
  scope :recent, order("happened_at desc").limit(40)

  def self.by_user(user_id)
    where(user_id: user_id)
  end

  def self.by_action_type(action_type)
    where(action_type: action_type)
  end
end
