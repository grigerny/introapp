class IntroMailer < ActionMailer::Base
  default from: "app31957904@heroku.com"
  
  def intro_email(intro)
    @intro = intro
    mail(to: @intro.person1_email + "," + @intro.person2_email, subject: @intro.person1_name + "," + ' meet ' + @intro.person2_name)
  end

end
