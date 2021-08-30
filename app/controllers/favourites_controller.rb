class FavouritesController < ApplicationController
    before_action :authenticate_and_set_user
  def index
    @favourites = current_user.favourites.all
    render json: @favourites
  end

  def create
    @favourite = current_user.favourites.build(favourite_params)
    if @favourite.save
      render json: @favourite
    end
  end

  private

  def favourite_params
    params.permit(:house_id)
  end
end
