class HousesController < ApplicationController

 def index
  @houses = House.all
 end

 def show
   @house = House.find(params[:id])
 end

 def new
 end

 def create
   #render plain: params[:house].inspect
   @house = House.new(house_params)
   @house.save
    redirect_to houses_path
 end


 private
   def house_params
     params.require(:house).permit(:house_name, :house_description, :price, :adress)
   end

end
