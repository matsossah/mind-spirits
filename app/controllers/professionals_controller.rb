class ProfessionalsController < ApplicationController

  def index
    @Professionals = Professional.all
  end

  def show
    @professional = Professional.find(params[:id])
  end

  def new
    @professional = Professional.new
  end

  def create
    @professional = Professional.new(professional_params)
    if @professional.save
      redirect_to cocktails_path
    else
      render :new
    end
  end

  def edit
    @professional = current_user.professional
  end

  def update
    @professional = current_user.professional.update(professional_params)
    if @professional.valid?
      redirect_to user_professional_path(current_user, @professional)
    else
      render :edit
    end
  end

private

  def professional_params
    params.require(:professional).permit(:name, :phone_number, :address, :description)
  end
end
