class WelcomeController < ApplicationController
  before_action :initialize_produtos, only: [:index]  

  def index
    # @produtos = [
    #   {nome:"Camiseta", preco:19.99},
    #   {nome:"Sabonete", preco:9.99},
    #   {nome:"Carro", preco:19983.00},
    #   {nome:"Casaco", preco:28.75},
    #   {nome:"Mouse", preco:295.48}
    # ]
      @produtos = session[:produtos]
      puts @produtos.inspect
  end

  def adicionar_produto
    produto = {nome: params[:nome], preco: params[:preco].to_f}
    session[:produtos] << produto
    redirect_to root_path
  end

  def initialize_produtos
    session[:produtos] ||= []
    @produtos = session[:produtos]
  end

end
