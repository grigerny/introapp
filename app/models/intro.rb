class Intro < ActiveRecord::Base
  belongs_to :user
  has_many :contacts
  
  attr_accessible :person1_name, :person1_email, :person2_name, :person2_email, :email_subject, :contact_name, :contact_email
  attr_accessor :contact_name, :contact_email

  validates_presence_of :person1_name, :person1_email, :person2_name, :person2_email, :email_subject
  validates_format_of :person1_email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  validates_format_of :person2_email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  
end
