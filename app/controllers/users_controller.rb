class UsersController < ApplicationController
  before_action :authenticate_and_set_user, except: :create
  def create
    @user = User.new(user_params)
    if @user.save
      auth_token = AuthenticateUser.new(@user.email, @user.password).call
      json_response(auth_token)
    else
      render json: { errors: @user.errors.full_messages, status: :not_acceptable }
    end
  end

  private

  def user_params
    params.permit(:name, :email, :password, :password_confirmation)
  end
end
