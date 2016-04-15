class Patient < ActiveRecord::Base

	validates :name, presence: true
	validates :gender, presence: true
	validates :term_date, presence: true
	validates :organs_list, presence: true

	belongs_to :hospital
	belongs_to :coordinator

end