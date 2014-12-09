require "omnicontacts"

Rails.application.middleware.use OmniContacts::Builder do
  importer :gmail, "330061137178-0bhe1iu4dlmsrvu886iadpjkmkgvqbpd.apps.googleusercontent.com", "OkqpLYVyQ7E1y4dk_VYe3q5t", {:redirect_path => "/users/oauth2callback", :ssl_ca_path => "/etc/ssl/certs/curl-ca-bundle.crt"}
  end
