require_relative "../test_helper"

class CoordinatorTest < Minitest::Test 

	def test_valid_at_creation
		c = Coordinator.new(name: "Sue Jones", email: "Suej@nedonation.org", phone: "402-880-3711")
		refute_nil(c)
	end 

def test_invalid_without_a_coordinator_name
		c = Coordinator.new(name: "Sue Jones", email: "Suej@nedonation.org", phone: "402-880-3711")
		assert(c.valid?, "Should be valid at initialization")

		c.name = nil
		refute(c.name?, "Should be invalid without a name")
	end

	def test_valid_with_an_coordinator_email
		c = Coordinator.new(name: "Sue Jones", email: "Suej@nedonation.org", phone: "402-880-3711")
		c.email = "Suej@nedonation.org"
		assert_equal("Suej@nedonation.org", c.email)
	end

	def test_invalid_without_an_coordinator_email
		c = Coordinator.new(name: "Sue Jones", email: "Suej@nedonation.org", phone: "402-880-3711")
		assert(c.valid?, "Should be valid at initialization")

		c.email = nil
		refute(c.email, "Should be invalid without an email")
	end

	def test_valid_with_a_coordinator_phone
		c = Coordinator.new(name: "Sue Jones", email: "Suej@nedonation.org", phone: "402-880-3711")
		c.phone = "402-880-3711"
		assert_equal("402-880-3711", c.phone)
	end

	def test_invalid_without_a_coordinator_phone
		c = Coordinator.new(name: "Sue Jones", email: "Suej@nedonation.org", phone: "402-880-3711")
		assert(c.valid?, "Should be valid at initialization")

		c.phone = nil
		refute(c.phone, "Should be invalid without a phone number")
	end

end
