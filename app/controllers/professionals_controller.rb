class ProfessionalsController < ApplicationController

  def index
    @professionals = Professional.all

    @markers = Gmaps4rails.build_markers(@professionals) do |professional, marker|
      marker.lat flat.latitude
      marker.lng flat.longitude
    end
  end

  def show
    user = User.find(params[:user_id])
    @professional = user.professional
    @professional_coordinates = { lat: @professional.latitude, lng: @professional.longitude }
    @review = Review.new
  end

  def new
    @professional = Professional.new
  end

  def create
    @professional = Professional.create(professional_params)
    @professional.user_id = current_user.id
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
