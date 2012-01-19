class UsersController < ApplicationController

  def new
    @title = "Sign up"
  end

  def show
    @user = User.find(params[:id])
  end

  rescue ActiveRecord::StatementInvalid
  # Handle duplicate email addresses gracefully by redirecting.
  redirect_to home_url
  
end
