class CatsController < ApplicationController

  def index
    @cats = Cat.all
  end

  def new
    @cat = Cat.new
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def create
    @cat = Cat.new(cat_params)

    if @cat.save
      redirect_to cats_path
    else
      render :new
    end
  end

  private

  def cat_params
    params.require(:cat).permit(:name, :color, :date_of_birth)
  end
end
