#encoding: utf-8
class UserMailer < ApplicationMailer

  def account_activation(user)
    @user = user
    mail to: user.email, subject: "Welcome to Modafeoon website"
  end

  def password_reset
    @greeting = "سلام"
    mail to: "to@example.org"
  end
end
