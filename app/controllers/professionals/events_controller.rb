module Professionals
  class EventsController < ApplicationController
    def index
      @review = Review.new
    end
  end
end
