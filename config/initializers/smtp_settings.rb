ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address        => "smtp.mandrillapp.com",
  :port           => "587",
  :authentication => :plain,
  :domain         => 'heroku.com',
  :user_name      => ENV['MANDRILL_USERNAME'],
  :password       => ENV['MANDRILL_APIKEY'],
  :enable_starttls_auto => true
}