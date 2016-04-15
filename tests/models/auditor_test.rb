require_relative "../test_helper"

class AuditorTest < Minitest::Test 

	def test_invalid_without_an_auditor_name
		a = Auditor.new(name: "Melissa Bernal", email: "melissaB@nedonation.org", phone: "402.578-5444")
		assert(a.valid?, "Should be valid at initialization")

		a.name = nil
		refute(a.valid?, "Should be invalid without a name")
	end

	def test_invalid_without_an_auditor_email
		a = Auditor.new(name: "Melissa Bernal", email: "melissaB@nedonation.org", phone: "402.578-5444")
		assert(a.valid?, "Should be valid at initialization")

		a.email = nil
		refute(a.valid?, "Should be invalid without an email")
	end

	def test_invalid_without_an_auditor_phone
		a = Auditor.new(name: "Melissa Bernal", email: "melissaB@nedonation.org", phone: "402.578-5444")
		assert(a.valid?, "Should be valid at initialization")

		a.phone = nil
		refute(a.valid?, "Should be invalid without a phone number")
	end

	def test_invalid_email_address
		a = Auditor.new(name: "Melissa Bernal", email: "melissaB@nedonation.org", phone: "402.578-5444")
		assert(a.valid?, "Should be valid at initialization")

		a.email = "melissa.bernal.com"
		refute(a.valid?, "This is an invalid email address")
	end

end



