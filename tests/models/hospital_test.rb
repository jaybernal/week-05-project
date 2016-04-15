require_relative "../test_helper"

class HospitalTest < Minitest::Test

	def test_invalid_without_a_hospital_name
		h = Hospital.new(name: "Nebraska Medical Center", city: "Omaha", phone: "402-315-0000")
		assert(h.valid?, "Should be valid at initialization")
		
		h.name = nil
		refute(h.valid?, "Should be invalid withouta a hospital name")
	end

	def test_invalid_without_a_hospital_city
		h = Hospital.new(name: "Nebraska Medical Center", city: "Omaha", phone: "402-315-0000")
		assert(h.valid?, "Should be valid at initialization")
		
		h.city = nil
		refute(h.valid?, "Should be invalid withouta a hospital name")
	end

	def test_invalid_without_a_hospital_phone
		h = Hospital.new(name: "Nebraska Medical Center", city: "Omaha", phone: "402-315-0000")
		assert(h.valid?, "Should be valid at initialization")
		
		h.phone = nil
		refute(h.valid?, "Should be invalid withouta a hospital phone number")
	end

end