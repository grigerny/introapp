class Contact < ActiveRecord::Base
	belongs_to :user

	attr_accessible :name, :email
end
