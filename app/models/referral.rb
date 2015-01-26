class Referral < ActiveRecord::Base
  belongs_to :mycontact
  
  attr_accessible :name, :mycontact_id
end
