class Coordinator < ActiveRecord::Base

	validates :name, presence: true
	validates :email, presence: true
	validates :phone, presence: true

	has_many :cases
	has_many :patients
	belongs_to :auditor
	
	has_and_belongs_to_many :hospitals
end
