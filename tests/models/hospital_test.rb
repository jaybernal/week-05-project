require_relative "../test_helper"

class HospitalTest < Minitest::Test

	def test_valid_at_creation
		h = Hospital.new(name: "Nebraska Medical Center", city: "Omaha", phone: "402-315-0000")
		refute_nil(h)
	end 

	def test_invalid_without_a_hospital_name
		h = Hospital.new(name: "Nebraska Medical Center", city: "Omaha", phone: "402-315-0000")
		assert(h.valid?, "Should be valid at initialization")
		h.name = nil
		refute(h.name?, "Should be invalid withouta a hospital name")
	end

	def test_valid_with_an_hospital_name
		h = Hospital.new(name: "Nebraska Medical Center", city: "Omaha", phone: "402-315-0000")	
		h.name = "Nebraska Medical Center"
		assert_equal("Nebraska Medical Center", h.name)
	end

	def test_invalid_without_a_hospital_city
		h = Hospital.new(name: "Nebraska Medical Center", city: "Omaha", phone: "402-315-0000")
		assert(h.valid?, "Should be valid at initialization")
		h.city = nil
		refute(h.city?, "Should be invalid withouta a hospital name")
	end

	def test_valid_with_a_hospital_city
		h = Hospital.new(name: "Nebraska Medical Center", city: "Omaha", phone: "402-315-0000")	
		h.city = "Omaha"
		assert_equal("Omaha", h.city)
	end

	def test_invalid_without_a_hospital_phone
		h = Hospital.new(name: "Nebraska Medical Center", city: "Omaha", phone: "402-315-0000")
		assert(h.valid?, "Should be valid at initialization")
		h.phone = nil
		refute(h.phone?, "Should be invalid withouta a hospital phone number")
	end

	def test_valid_with_a_hospital_city
		h = Hospital.new(name: "Nebraska Medical Center", city: "Omaha", phone: "402-315-0000")	
		h.phone = "402-315-0000"
		assert_equal("402-315-0000", h.phone)
	end


end