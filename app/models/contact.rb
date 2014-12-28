class Contact < ActiveRecord::Base
	belongs_to :user

	attr_accessible :name, :email

	def autocomplete_upcase
		"#{self.name}".camelize
	end
end
