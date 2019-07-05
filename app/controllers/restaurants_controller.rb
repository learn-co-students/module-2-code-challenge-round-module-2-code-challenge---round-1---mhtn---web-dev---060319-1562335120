class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    if params[:name]
    @restaurant = Restaurant.where('name LIKE ?', "%#{params[:name]}%")
    else
    @restaurant = Restaurant.all
    end
  end

  def show  
    @restaurant = Restaurant.find(params[:id])
  end 

  private  

  def restaurant_params
      params.require(:restaurant).permit(:name, :address, :search, :terms)
  end 

end
