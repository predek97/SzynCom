class UserController < ApplicationController
  def show
  end

  def search
    params.require(:search)
    @users = User.search(params[:search])
    puts @users
  end
end