class EventsController < ApplicationController
  require 'date'

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    start_time = DateTime.strptime(params['start_time'], "%m/%d/%Y %H:%M")
    end_time = DateTime.strptime(params['end_time'], "%m/%d/%Y %H:%M")
    address = params['address']
    professional = Professional.find(params['professional_id'])

    service = ReservationService.new(professional, current_user, start_time, end_time, address)
    begin
      service.reserve!
      flash[:notice] = "You are booked!"
      redirect_to user_path(current_user)
    rescue ProfessionalNotAvailableException => ex
      flash[:notice] = "Sorry, the booking failed"
      redirect_to user_path(current_user)
    end
  end

  def edit
    @event = Event.new
  end

  def update
    @event = Event.new(event_params)
    if @event.save
      redirect_to event_path(@event)
    else
      render :edit
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    redirect_to events_path
  end

private

  def event_params
    params.require(:event).permit(:user_id, :professional_id, :address, :start_time, :end_time)
  end
end
