class PuppiesController < ApplicationController

  def index
    @puppys = Puppy.all
  end

  def show
  end

  def new
    @puppy = Puppy.new
  end

  def edit
  end

  def create
    @puppy = Puppy.new puppy_params
    if @puppy.save
      redirect_to "/puppys"
    else
      render :new
    end
  end

  private
  def puppy_params
    params.require(:puppy).permit(:name)
  end
end
