class Hospital < ActiveRecord::Base

	validates :name, presence: true
	validates :city, presence: true
	validates :phone, presence: true
	
	has_many :patients
	has_and_belongs_to_many :coordinator
end