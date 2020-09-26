class Api::UsersController < ApplicationController
  before_action :get_user, only: [:update, :destroy, :show]
  load_and_authorize_resource

  def index
    authorize! :read, @users
    @users = User.all
  end

  def show
  end

  def update
    unless @user.update(user_params)
      render json: @user.errors, status: 422
    end
  end

  def destroy
    unless @user.destroy
      render json: @user.errors, status: 422
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :user_name, :date_of_birth, :gender, :phone_number, role_attributes: [:role_name])
  end

  def get_user
    @user = User.find_by(id: params[:id]) or not_found
  end
end
