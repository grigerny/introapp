require "omnicontacts"

Rails.application.middleware.use OmniContacts::Builder do
  importer :gmail, '330061137178-0bhe1iu4dlmsrvu886iadpjkmkgvqbpd.apps.googleusercontent.com', 'OkqpLYVyQ7E1y4dk_VYe3q5t', :max_results => 500 unless Rails.env.production? 
  importer :gmail, '330061137178-od10mrsjsdedq86thuot714o1f37n3vl.apps.googleusercontent.com', 'jHGRk7ItfbTzcdJxbvlk00eL', :max_results => 500 if Rails.env.production? 
end
