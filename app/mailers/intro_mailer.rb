class IntroMailer < ActionMailer::Base
  
  def intro_email(intro, login_user)
    @intro = intro
    @user = @intro.user
    mail(from: login_user.email, to: @intro.person1_email + "," + @intro.person2_email, subject: @intro.person1_name + "," + ' meet ' + @intro.person2_name, reply_to: @intro.user.email)
  end

end
