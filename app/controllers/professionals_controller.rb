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
    @professional = Professional.new
  end

  def update
    @professional = Professional.new(professional_params)
    if @professional.save
      redirect_to professional_path(@professional)
    else
      render :edit
    end
  end

private

  def professional_params
    params.require(:professional).permit(:name, :phone_number, :address, :description)
  end
end
