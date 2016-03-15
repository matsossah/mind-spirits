class EventMailer < ApplicationMailer
  def new_event_user(event)
    @event = event

    mail(
      to:       @event.user.email,
      subject:  "Event on #{@event.start_time} created!"
    )
  end

  def new_event_pro(event)
    @event = event
    @user = User.find(@event.professional.user_id)

    mail(
      to:       @user.email,
      subject:  "Event on #{@event.start_time} created!"
    )
  end

  def event_confirmed(event)
    @user = event.user

    mail(
      to: @user.email,
      subject: 'Event confirmed: Get ready!'
    )
  end
end

