class ActivityUsersController < ApplicationController

  def create
    @activity_user = ActivityUser.new(activity_user_params)
    @activity_user.user = current_user
    @activity_user.save
  end

  private

  def activity_user_params
    params.require(:activity_user).permit(:activity_id, :duration)
  end
end
