class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      payload = {user_id: @user.id}
      token = encode_token(payload)
      render json: {user: @user, jwt: token}, status: :created
    else
      render json: { errors: 'Sign up failed', status: :not_acceptable }
    end
  end

  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      payload = {user_id: @user.id}
      @token = encode_token(payload)
      render json: {user: @user, token: @token}
    else
      render json: {error: 'Invalid email or password'}, status: :unauthorized
    end
  end

  private

  def user_params
    params.permit(:name, :email, :password, :password_confirmation)
  end

  def encode_token(payload)
    JWT.encode(payload, Rails.application.secrets.secret_key_base[0])
  end
end
