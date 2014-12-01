class IntroMailer < ActionMailer::Base
  default from:  '"Introduction Email" <intro@yointro.com>'

  
  def intro_email(intro)
    @intro = intro
    @user = @intro.user
    mail(to: @intro.person1_email + "," + @intro.person2_email, subject: @intro.person1_name + "," + ' meet ' + @intro.person2_name, reply_to: @intro.user.email)
  end

end
