class HomeController < ApplicationController

  def index
    if user_signed_in?
      redirect_to "/showroom"
    else
      redirect_to "/users/sign_in"
    end
  end
  
  
  def showroom
   @register_list = Registration.all
     
  end
  
  def register
      
  end 
  
  def register_save


    new_register = Registration.new
    new_register.couponnumber = params[:couponnumber]
    new_register.description = params[:description]
    new_register.productname = params[:productname]
    new_register.category = params[:category]
    new_register.company = params[:company]
    new_register.time = params[:time]
    new_register.price = params[:price]
    new_register.save
    
    file = params[:productpic]
    new_productpic = ProductpicUploader.new
    new_productpic.store!(file)

    redirect_to "/showroom"
    
    
  
  end
  
  
  def category
      
  end
  
  def sell
    @register_who = Registration.find(params[:id])
  end
  
  def destroy
    @registered = Registration.find(params[:id])
    @registered.destroy
    redirect_to "/showroom"
  end
  
  def rewrite_view
    @registered_update = Registration.find(params[:id])
  end
  
  def rewrite
    @registered_update = Registration.find(params[:id])
    @registered_update.couponnumber = params[:couponnumber]
    @registered_update.description = params[:description]
    @registered_update.productname = params[:productname]
    @registered_update.category = params[:category]
    @registered_update.company = params[:company]
    @registered_update.time = params[:time]
    @registered_update.price = params[:price]
    @registered_update.save
    
    redirect_to "/showroom"
  end
end
