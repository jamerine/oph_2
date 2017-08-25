class MenusController < ApplicationController

  def index
    @products = Product.all
  end

  def menu

  end

  def show
    @products = Product.all
  end


end
