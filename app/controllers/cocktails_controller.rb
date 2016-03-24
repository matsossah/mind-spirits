class CocktailsController < ApplicationController
    skip_before_action :authenticate_user!, only: [:index, :show]


  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    nb_of_doses = @cocktail.doses.count
    @offset = get_offset(nb_of_doses)
  end

  def get_offset(nb_of_doses)
    offset = 0
    case nb_of_doses
    when 2
      offset = 4
    when 3
      offset = 3
    when 4
      offset = 2
    when 5
      offset = 1
    end
    offset
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      doses = Dose.all
      doses.each do |dose|
        case dose.ingredient_id
        when 7
          Cocktail.find(dose.cocktail_id).alcohol_type = "vodka"
        when 19
          Cocktail.find(dose.cocktail_id).alcohol_type = "rhum"
        when 20
          Cocktail.find(dose.cocktail_id).alcohol_type = "gin"
        when 8 || 31
          Cocktail.find(dose.cocktail_id).alcohol_type = "whisky"
        when 17
          Cocktail.find(dose.cocktail_id).alcohol_type = "tequila"
        end
      end
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
