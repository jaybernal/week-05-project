require_relative "../test_helper"
class PatientTest < Minitest::Test

	def test_valid_at_creation
		p = Patient.new(name: "John Trump", gender: "Male", organs_list: "Heart, lung, and liver", term_date: 04142016)
		refute_nil(p)
	end 

	def test_invalid_without_a_name
		p = Patient.new(name: "John Trump", gender: "Male", organs_list: "Heart, lung, and liver", term_date: 04142016)		
		assert(p.valid?, "Should be valid at initialization")
		p.name = nil
		refute(p.name?, "Should be invalid without a patient name")
	end

	def test_valid_with_a_name
		p = Patient.new(name: "John Trump", gender: "Male", organs_list: "Heart, lung, and liver", term_date: 04142016)		
		p.name = "John Trump"
		assert_equal("John Trump", p.name)
	end

def test_invalid_without_a_gender
		p = Patient.new(name: "John Trump", gender: "Male", organs_list: "Heart, lung, and liver", term_date: 04142016)		
		assert(p.valid?, "Should be valid at initialization")
		p.gender = nil
		refute(p.gender?, "Should be invalid without a patient's gender")
	end

	def test_valid_with_a_gender
		p = Patient.new(name: "John Trump", gender: "Male", organs_list: "Heart, lung, and liver", term_date: 04142016)		
		p.gender = "Male"
		assert_equal("Male", p.gender)
	end

	def test_invalid_without_a_organs_list
		p = Patient.new(name: "John Trump", gender: "Male", organs_list: "Heart, lung, and liver", term_date: 04142016)		
		assert(p.valid?, "Should be valid at initialization")
		p.organs_list = nil
		refute(p.organs_list?, "Should be invalid without a descriptions of the donations")
	end

	def test_valid_with_a_organs_list
		p = Patient.new(name: "John Trump", gender: "Male", organs_list: "Heart, lung, and liver", term_date: 04142016)		
		p.organs_list = "Heart, lung, and liver"
		assert_equal("Heart, lung, and liver", p.organs_list)
	end

	def test_invalid_without_a_term_date
		p = Patient.new(name: "John Trump", gender: "Male", organs_list: "Heart, lung, and liver", term_date: 04142016)		
		assert(p.valid?, "Should be valid at initialization")
		p.term_date = nil
		refute(p.term_date?, "Should be invalid without a valid term date")
	end

	def test_valid_with_a_term_date
		p = Patient.new(name: "John Trump", gender: "Male", organs_list: "Heart, lung, and liver", term_date: 04142016)		
		p.term_date = 04142016
		assert_equal(04142016, p.term_date)
	end


end
