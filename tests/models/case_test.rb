require_relative "../test_helper"

class CaseTest < Minitest::Test 

	def test_valid_at_creation
		c = Case.new(number: 1234)
		refute_nil(c)
	end

	def test_case_number_is_valid
		c = Case.new(number: 1234)
		c.number = 1234
		assert_equal(1234, c.number)
	end

  def test_without_a_valid_case_number
    c = Case.new(number: 1234)
    assert(c.valid?, "should be valid at initialization")
    
    c.number = nil
    refute(c.valid?, "should be invalid without a case number")
  end

end
