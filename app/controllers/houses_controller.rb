class HousesController < ApplicationController
  def index
    @houses = House.all
    render json: @houses
  end
  
  def create
    @house = House.new(house_params)
    if @house.save
      render json: @house
    else
      render json: {error: 'House not created!'}
    end
  end

  def show
    @house = House.find(params[:id])
    render json: @house
  end

  private

  def house_params
    params.permit(:price, :details, :about, :image, :owner)
  end
end
