class SessionsController < ApplicationController
  def login
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      payload = {user_id: user.id}
      token = encode_token(payload)
      render json: {user: user, jwt: token, success: "Welcome back, #{user.name}"}
    else
      render json: {failure: 'Invalid email or password'}
    end
  end

  def auth_login
    if current_user
      render json: current_user
    else
      render json: {errors: 'No User Logged In'}
    end
  end
end
