class ShoesController < ApplicationController

def index
  @shoe = Shoe.new
  @shoes = Shoe.all
end

  def create
    @shoe = Shoe.create(shoe_params)
    if @shoe.save
      redirect_to shoes_path
    else
      render :index
    end
  end

def show
  @shoe = Shoe.find(params[:id])
end

  private

  def shoe_params
    params.require(:shoe).permit(:shoe_type, :heel)
  end

end