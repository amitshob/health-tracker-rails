class UserController < ApplicationController
  before_action :authenticate_user!
  def index
    @user = current_user
    binding.pry
  end
end
