class Mycontact < ActiveRecord::Base
  belongs_to :user
  has_many :referrals
  
  attr_accessible :name
  validates_uniqueness_of :name
end
