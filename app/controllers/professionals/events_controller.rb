module Professionals
  class EventsController < ApplicationController
    def index
      @review = Review.new
    end

    def confirm
      event = Event.find(params[:event_id])
      event.is_confirmed = true
      event.save

      redirect_to :back
    end
  end
end
