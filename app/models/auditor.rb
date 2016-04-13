class Auditor < ActiveRecord::Base

	has_many :cases
	has_many :coodinators
end