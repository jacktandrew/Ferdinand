class HomeController < ApplicationController
  def index
  end
  
  def show
    @recipe = Recipe.find(params[:id])
    respond_to do |format|
      format.html
      format.mobile { render :layout => false }
    end
  end
end
