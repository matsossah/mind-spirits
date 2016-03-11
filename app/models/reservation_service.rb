class ProfessionalNotAvailableException < StandardError; end

class ReservationService
  def initialize(professional, user, start_time, end_time, address)
    @professional = professional
    @user = user
    @start_time = start_time
    @end_time = end_time
    @address = address
  end

  def reserve!
    ActiveRecord::Base.transaction do
      if professional_available?
        Event.create(professional: @professional, user: @user, start_time: @start_time, end_time: @end_time, address: @address)
      else
        raise ProfessionalNotAvailableException
      end
    end
  end

  private

  def professional_available?
    pro_event = Event.where(professional: @professional)
    match = pro_event.select {|event| event.start_time < @start_time && @start_time < event.end_time}
    return true if match.empty?
    false
  end

end
