ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :enable_starttls_auto => true,
    :address        => 'gator2013.hostgator.com',
    :port           => 465,
    :domain         => 'yointro.com',
    :authentication => :plain,
    :user_name      => 'intro@yointro.com',
    :password       => 'elwin11'
  }