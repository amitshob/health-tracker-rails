class UserController < ApplicationController
  before_action :authenticate_user!
  def index
    @user = current_user

    @total_exp = @user.total_expend

  end
end
