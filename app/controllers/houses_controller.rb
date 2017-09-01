class HousesController < ApplicationController

 def index
  @houses = House.all
 end

 def show
   @house = House.find(params[:id])
 end

 def new
   @house = House.new
 end

 def create
   #render plain: params[:house].inspect
   @house = House.new(house_params)
   if @house.save
     redirect_to houses_path
   else
    render 'new'
   end
 end

 def edit
   @house = House.find(params[:id])
 end

 def update
   @house = House.find(params[:id])
   if @house.update(house_params)
     redirect_to houses_path
   else
     render 'edit'
 end


 private
   def house_params
     params.require(:house).permit(:house_name, :house_description, :price, :adress)
   end



end
