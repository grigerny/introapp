class Contact < ActiveRecord::Base
	belongs_to :user
	belongs_to :intro

	attr_accessible :name, :email, :name2, :email2

	def autocomplete_upcase
		"#{self.name}".camelize
	end
end
