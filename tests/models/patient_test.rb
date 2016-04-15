require_relative "../test_helper"

class PatientTest < Minitest::Test

	def test_invalid_without_a_name
		p = Patient.new(name: "John Trump", gender: "Male", organs_list: "Heart, lung, and liver", term_date: 04142016)		
		assert(p.valid?, "Should be valid at initialization")
		
		p.name = nil
		refute(p.valid?, "Should be invalid without a patient name")
	end

	def test_invalid_without_a_gender
		p = Patient.new(name: "John Trump", gender: "Male", organs_list: "Heart, lung, and liver", term_date: 04142016)		
		assert(p.valid?, "Should be valid at initialization")
		
		p.gender = nil
		refute(p.valid?, "Should be invalid without a patient's gender")
	end

	def test_invalid_without_a_organs_list
		p = Patient.new(name: "John Trump", gender: "Male", organs_list: "Heart, lung, and liver", term_date: 04142016)		
		assert(p.valid?, "Should be valid at initialization")
		
		p.organs_list = nil
		refute(p.valid?, "Should be invalid without a descriptions of the donations")
	end

	def test_invalid_without_a_term_date
		p = Patient.new(name: "John Trump", gender: "Male", organs_list: "Heart, lung, and liver", term_date: 04142016)		
		assert(p.valid?, "Should be valid at initialization")
		
		p.term_date = nil
		refute(p.valid?, "Should be invalid without a valid term date")
	end

end
