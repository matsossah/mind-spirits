module Professionals
  class EventsController < ApplicationController
    def index
      @events = current_user.professional.events
      @review = Review.new

    end

    def confirm
      @event = Event.find(params[:event_id])
      @event.is_confirmed = true

      if @event.save
        respond_to do |format|
          # format.html { redirect_to user_professional_events(current_user) }
          format.js  # <-- will render `app/views/reviews/create.js.erb`
        end
      else
        respond_to do |format|
          # format.html { render 'professionals/events/index' }
          format.js  # <-- idem
        end
      end
    end
  end
end
