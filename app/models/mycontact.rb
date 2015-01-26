class Mycontact < ActiveRecord::Base
  belongs_to :user
  has_many :referrals
  
  attr_accessible :name, :referredby_name, :referral_id, :location, :user_id
  validates_uniqueness_of :name, :scope => [:user_id]

end
