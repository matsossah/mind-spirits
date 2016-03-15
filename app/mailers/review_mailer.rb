class ReviewMailer < ApplicationMailer
  def new_professional_review(user)
    @user = user

    mail(to: @user.email, subject: 'You got a new review')
  end

  def new_user_review(pro)
    @user = User.find(pro.user_id)

    mail(to: @user.email, subject: 'You got a new review')
  end
end
