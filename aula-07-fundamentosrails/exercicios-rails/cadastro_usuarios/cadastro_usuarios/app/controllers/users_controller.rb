class UsersController < ApplicationController
  
  
  def create
    @nome = params[:nome]
    @email = params[:email]
    @senha = params[:senha]
    render "users/confirm"
  end

  def new 
  end

end
