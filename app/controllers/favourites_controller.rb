class FavouritesController < ApplicationController
  def index
    @favourites = current_user.favourites.all
    render json: @favourites
  end

  def create
    @favourite = current_user.favourites.build(favourite_params)
    render json: @favourite if @favourite.save
  end

  private

  def favourite_params
    params.permit(:house_id)
  end

    def current_user
    decoded_hash = decoded_token
    if !decoded_hash.empty?
      user_id = decoded_hash[0]['user_id']
      @user = User.find_by(id: user_id)
    else
      []
    end
  end

  def auth_header
    request.headers['Authorization']
  end

  def decoded_token
    if auth_header
      token = auth_header.split(' ')[1]
      begin
        JWT.decode(token, Rails.application.secrets.secret_key_base[0], true, algorithm: 'HS256')
      rescue JWT::DecodeError
        []
      end
    end
  end
end
