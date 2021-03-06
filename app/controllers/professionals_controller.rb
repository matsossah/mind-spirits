class ProfessionalsController < ApplicationController

  def index
    @professionals = Professional.all
  end

  def show
    user = User.find(params[:user_id])
    @professional = user.professional
    @professional_coordinates = { lat: @professional.latitude, lng: @professional.longitude}
    @review = Review.new
  end

  def new
    @professional = current_user.professionals.build
  end

  def create
    @professional = current_user.professionals.build(professional_params)
    @professional.user = current_user
    @professional.name = current_user.name

    if @professional.save
      redirect_to user_professional_path(current_user, @professional)
    else
      render :new
    end
  end

  def edit
    @professional = current_user.professional
  end

  def update
    @professional = current_user.professional
    if @professional.update(professional_params)
      redirect_to user_professional_path(current_user, @professional)
    else
      render :edit
    end
  end

private

  def professional_params
    params.require(:professional).permit(:max_travel_range, :professional_role, :phone_number, :business_address, :description)
  end
end
