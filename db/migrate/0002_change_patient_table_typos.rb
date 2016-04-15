class ChangePatientTableTypos < ActiveRecord::Migration

	def change
		rename_column :patients, :hosital_id, :hospital_id
	end

end