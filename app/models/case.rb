class Case < ActiveRecord::Base

	validates :number, presence: true

	belongs_to :coordinator
	belongs_to :auditor
end