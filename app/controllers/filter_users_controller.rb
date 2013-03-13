class FilterUsersController < ApplicationController
  def index
    @user_ids = Entry.user_ids.pluck(:user_id)
  end

  def show
    @user_id = params[:id]
    @entries = Entry.by_user(@user_id).recent
  end
end
