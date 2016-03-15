class UserMailer < ApplicationMailer

  def welcome_user(user)
    @user = user

    mail(to: @user.email, subject: 'Welcome to MindSpirit')
  end

  def welcome_pro(pro)
    @user = User.find(pro.user_id)

    mail(to: @user.email, subject: 'Welcome to MindSpirit Pro')
  end
end
