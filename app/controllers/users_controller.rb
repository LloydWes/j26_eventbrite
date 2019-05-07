class UsersController < ApplicationController
  def show
    puts "#"*10
    puts params[:id]
    @user = User.find_by(id: params[:id])
  end
end
