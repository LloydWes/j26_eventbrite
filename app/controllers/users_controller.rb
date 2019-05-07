class UsersController < ApplicationController
  before_action :check_authenticate_user, only: [:show]

  def show
    puts "#"*10
    puts params[:id]
    @user = User.find_by(id: params[:id])
  end

  private

  def check_authenticate_user
    if authenticate_user!
    elsif !user_signed_in? || current_user.id != params[:id].to_i
      flash[:danger] = "You tried to access the wrong profil"
      # puts "#"*50, flash[:danger]
      redirect_to :root
    end
  end
end
