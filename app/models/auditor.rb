require "email_validator"

class Auditor < ActiveRecord::Base

	validates :name, presence: true
	validates :email, presence: true, email: true
	validates :phone, presence: true	

	has_many :cases
	has_many :coodinators
end