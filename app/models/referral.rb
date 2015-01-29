class Referral < ActiveRecord::Base
  belongs_to :mycontact, counter_cache: true
  
  attr_accessible :name, :mycontact_id, :user_id

end
