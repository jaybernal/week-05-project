class Coordinator < ActiveRecord::Base

	has_many :cases
	has_many :patients
	has_and_belongs_to_many :hospitals
end
