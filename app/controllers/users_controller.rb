class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      payload = { user_id: @user.id }
      token = encode_token(payload)
      render json: { user: @user, jwt: token, message: 'created' }, status: :created
    elsif User.find_by(email: params[:email])
      render json: { errors: 'Account already exists', status: :not_acceptable }
    else
      render json: { errors: 'Password does not match with password confirmation', status: :not_acceptable }
    end
  end

  def login
    @user = User.find_by(email: params[:email])
    if @user &.authenticate(params[:password])
      payload = { user_id: @user.id }
      @token = encode_token(payload)
      render json: { user: @user, jwt: @token, message: 'login successful' }
    else
      render json: { error: 'Invalid email or password', status: :unauthorized }
    end
  end

  private

  def user_params
    params.permit(:name, :email, :password, :password_confirmation)
  end

  def encode_token(payload)
    JWT.encode(payload, jwt_key)
  end
end
