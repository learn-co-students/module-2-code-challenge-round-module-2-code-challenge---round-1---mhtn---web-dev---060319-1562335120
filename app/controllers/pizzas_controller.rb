class PizzasController < ApplicationController
  def index
    @pizzas = Pizza.all
  end

  def show 
    @pizza = Pizza.find(params[:id])
  end 

  def new
     @pizza = Pizza.new
  end

  def create
     @pizza = Pizza.new(pizza_params)
     if @pizza.valid?
        @pizza.save
        redirect_to pizzas_path
     else
        flash[:message] = @pizza.errors.full_messages
        render :new
     end
  end

    private  

  def pizza_params
      params.require(:pizza).permit(:name, :ingredients, :restaurant_id)
  end 
  
end
