class EventsController < ApplicationController
  require 'date'

  def index
    @events = Event.all
    @review = Review.new

  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
    @professionals = Professional.all
    @markers = Gmaps4rails.build_markers(@professionals) do |professional, marker|
      marker.lat professional.latitude
      marker.lng professional.longitude
      marker.infowindow render_to_string(:partial => "/professionals/map_box", locals: {professional: professional})
    end
  end

  def create
    start_time = DateTime.strptime(params['start_time'], "%m/%d/%Y %H:%M")
    end_time = DateTime.strptime(params['end_time'], "%m/%d/%Y %H:%M")
    address = params['address']
    professional = Professional.find(params['professional_id'])

    if end_time < start_time
      flash[:notice] = "This event can't be created: The end time should be prior to the start time"
      redirect_to new_user_event_path(current_user)
    else
      service = ReservationService.new(professional, current_user, start_time, end_time, address)
      begin
        event = service.reserve!
        order = Order.create('state': 'pending', user: current_user, 'amount_cents': event.price_cents)
        event.order = order
        event.save
        # flash[:notice] = "You event was successfully created!"
        # EventMailer.new_event_user(event).deliver_now
        # EventMailer.new_event_pro(event).deliver_now
        redirect_to order_path(order)
      rescue ProfessionalNotAvailableException => ex
        flash[:notice] = "Sorry, the booking failed.  Please retry"
        redirect_to user_path(current_user)
      end
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
