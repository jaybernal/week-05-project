require_relative "../test_helper"

class CoordinatorTest < Minitest::Test 

	def test_invalid_without_a_coordinator_name
		c = Coordinator.new(name: "Sue Jones", email: "Suej@nedonation.org", phone: "402-880-3711")
		assert(c.valid?, "Should be valid at initialization")

		c.name = nil
		refute(c.valid?, "Should be invalid without a name")
	end

	def test_invalid_without_an_coordinator_email
		c = Coordinator.new(name: "Sue Jones", email: "Suej@nedonation.org", phone: "402-880-3711")
		assert(c.valid?, "Should be valid at initialization")

		c.email = nil
		refute(c.valid?, "Should be invalid without an email")
	end

	def test_invalid_without_a_coordinator_phone
		c = Coordinator.new(name: "Sue Jones", email: "Suej@nedonation.org", phone: "402-880-3711")
		assert(c.valid?, "Should be valid at initialization")

		c.phone = nil
		refute(c.valid?, "Should be invalid without a phone number")
	end

end
