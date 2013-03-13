class FilterActionsController < ApplicationController
  def index
    @action_names = Entry.action_types.pluck(:action_type).sort
  end

  def show
    @action_type = params[:id]
    @entries = Entry.by_action_type(@action_type).recent
  end
end
