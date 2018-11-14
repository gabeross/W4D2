class CatsController < ApplicationController
  
  def index
    @cats = Cat.all
    render :index  #render all of the cats
    # "hi"
  end
  
  def show
    @cat = Cat.find(params[:id])
    render :show
  end
  
  def create
    @cat = Cat.new(params.require(:cat).permit(:birth_date, :color, :name, :sex, :description))
    
    if cat.save
      redirect_to cat_url(@cat)
      # render :show
    else
      render json: cat.error.full_messages, status: 422
    end
  end
  
  def new
    render :new
  end
  
  
  
end