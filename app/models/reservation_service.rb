class RoomNotAvailableException < StandardError; end

class ReservationService
  def initialize(professional, user, start_time, end_time)
    @professional = professional
    @user = user
    @start_time = start_time
    @end_time = end_time
  end

  def reserve!
    ActiveRecord::Base.transaction do
      if professional_available?
        Reservation.create(professional: @professional, user: @user, start_time: @start_time, end_time: end_time)
      else
        raise ProfessionalNotAvailableException
      end
    end
  end

  private

  def professional_available?
    Reservation.where(:professional_id => @professional.id, start_time: @start_time, end_time: @end_time).exists?
  end

end
