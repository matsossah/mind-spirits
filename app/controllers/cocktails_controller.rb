class CocktailsController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index, :show]


  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @offset = 0
    case @cocktail.doses.count
    when 3
      @offset = 3
    when 4
      @offset = 2
    when 5
      @offset = 1
    else
      @offset = 0
    end
    @new_dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy

    redirect_to cocktails_path
  end

private

  def cocktail_params
    params.require(:cocktail).permit(:name, :image, :image_cache)
  end
end
