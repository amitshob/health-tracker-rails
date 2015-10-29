class FoodsUsersController < ApplicationController

  def create
    @food_activity = FoodUser.new(food_activity_params)
    @food_activity.user = current_user
    @food_activity.save
  end

  private

  def food_activity_params
    params.require(:food_activity).permit(:food_id, :duration)
  end
end
