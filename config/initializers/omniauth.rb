require "omnicontacts"

Rails.application.middleware.use OmniContacts::Builder do
  importer :gmail, '1054205529079-ioanvil31qohdcsrb7vo8gt64p24h3um.apps.googleusercontent.com', 'RY4T7nTuLPmIC4wt0hbqNS7V'
end
