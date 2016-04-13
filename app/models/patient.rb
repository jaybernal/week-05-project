class Patient < ActiveRecord::Base

	belongs_to :hospital
	belongs_to :coordinator

end