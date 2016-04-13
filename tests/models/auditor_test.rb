require_relative "../test_helper"

class AuditorTest < Minitest::Test 

	def test_valid_at_creation
		c = Case.new(number: 1234)
		refute_nil(c)
	end

	def test_valid_with_a_auditor_name
		a = Auditor.new(name: "Melissa Bernal", email: "melissaB@nedonation.org", phone: "402.578-5444")
		a.name = "Melissa Bernal"
		assert_equal("Melissa Bernal", a.name)
	end

	def test_invalid_without_an_auditor_name
		a = Auditor.new(name: "Melissa Bernal", email: "melissaB@nedonation.org", phone: "402.578-5444")
		assert(a.valid?, "Should be valid at initialization")

		a.name = nil
		refute(a.name?, "Should be invalid without a name")
	end

	def test_valid_with_an_auditor_email
		a = Auditor.new(name: "Melissa Bernal", email: "melissaB@nedonation.org", phone: "402.578-5444")
		a.email = "melissaB@nedonation.org"
		assert_equal("melissaB@nedonation.org", a.email)
	end

	def test_invalid_without_an_auditor_email
		a = Auditor.new(name: "Melissa Bernal", email: "melissaB@nedonation.org", phone: "402.578-5444")
		assert(a.valid?, "Should be valid at initialization")

		a.email = nil
		refute(a.email, "Should be invalid without an email")
	end

	def test_valid_with_an_auditor_phone
		a = Auditor.new(name: "Melissa Bernal", email: "melissaB@nedonation.org", phone: "402.578-5444")
		a.phone = "402-578-5444"
		assert_equal("402-578-5444", a.phone)
	end

	def test_invalid_without_an_auditor_phone
		a = Auditor.new(name: "Melissa Bernal", email: "melissaB@nedonation.org", phone: "402.578-5444")
		assert(a.valid?, "Should be valid at initialization")

		a.phone = nil
		refute(a.phone, "Should be invalid without a phone number")
	end
end



