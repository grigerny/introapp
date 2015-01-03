class Mycontact < ActiveRecord::Base
  belongs_to :user
  has_many :referrals
  
  attr_accessible :name, :referredby_name, :referredby_id, :location
  validates_uniqueness_of :name
end
