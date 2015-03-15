class Freelancer < ActiveRecord::Base
 	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }, uniqueness:true
	validates :firstname, :name, :email, presence:true
end
