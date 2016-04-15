class MakeInitialTables < ActiveRecord::Migration

	def change
		create_table 	:cases do |t|
			t.integer 	:number, null: false
			t.integer 	:coordinator_id
			t.integer		:auditor_id
			t.integer		:hosital_id
		end
		create_table 	:coordinators do |t|
			t.string 		:name, null: false
			t.string 		:email, null: false
			t.string 		:phone, null: false
			t.integer		:auditor_id
		end
		create_table 	:auditors do |t|
			t.string 		:name, null: false
			t.string 		:email, null: false
			t.string 		:phone, null: false
		end
		create_table 	:hospitals do |t|
			t.string 		:name, null: false
			t.string 		:city, null: false
			t.string 		:phone, null: false
		end
		create_table 	:patients do |t|
			t.string 		:name, null: false
			t.string 		:gender, null: false
			t.text 			:organs_list, null: false
			t.integer 	:term_date, null: false
			t.integer		:hosital_id
		end		
		create_join_table :coordinators, :hospitals
	end

end