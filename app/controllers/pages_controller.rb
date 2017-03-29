class PagesController < ApplicationController
  def x
  end
  def save_user
  	unless params[:name].blank? or params[:email].blank? or params[:age].blank?

  		User.create(name:params[:name], email:params[:email], age:params[:age])
  		redirect_to pages_x_path,
  		notice:"Usuario creado correctamente! "
  		
  	end
  	
  end

end
