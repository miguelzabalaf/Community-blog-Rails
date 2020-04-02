class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update]
  def show
    @user = User.find(params[:id])
    @articles = Article.all
  end

  def edit
  end

  def update
  end

  private

  def set_user 
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :lastname,
                                 :age, :email, :password,
                                 :current_password, :password_confirmation)
  end

end
