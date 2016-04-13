class Hospital < ActiveRecord::Base
	
		has_many :patients
		has_and_belongs_to_many :coordinator
end