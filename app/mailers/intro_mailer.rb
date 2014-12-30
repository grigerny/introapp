class IntroMailer < ActionMailer::Base
  
  def intro_email(intro, login_user)
    @intro = intro
    @user = @intro.user
    mail(from: login_user.email, to: @intro.person1_email+ "," + @intro.person2_email, subject: "Introducing" + " " + @intro.person1_name.titleize + " " + "and" + " " +  @intro.person2_name.titleize, reply_to: @intro.user.email, bcc: login_user.email)
  end

end
