class IntroMailer < ActionMailer::Base
  default from: "Introduction Email"
  
  def intro_email(intro)
    @intro = intro
    mail(to: @intro.person1_email, subject: 'Testing Intro Email')
  end
end
