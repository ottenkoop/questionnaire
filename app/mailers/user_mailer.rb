class UserMailer < ActionMailer::Base
  default from: "kenyan.web.solution@gmail.com"

  def password_reset(user)
    @user = user
    mail :to => user.email, :subject => "Password Reset"
  end
  
end