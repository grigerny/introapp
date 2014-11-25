class Intro < ActiveRecord::Base
  belongs_to :user
  
  attr_accessible :person1_name, :person1_email, :person2_name, :person2_email
  
  validates_presence_of :person1_name, :person1_email, :person2_name, :person2_email
end
