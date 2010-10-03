class DashboardController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @user = User.all.excludes(:id => current_user.id)
  end
end
