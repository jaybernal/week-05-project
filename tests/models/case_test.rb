require_relative "../test_helper"

class CaseTest < Minitest::Test 

  def test_without_a_valid_case_number
    c = Case.new(number: 1234)
    assert(c.valid?, "should be valid at initialization")
    
    c.number = nil
    refute(c.valid?, "should be invalid without a case number")
  end

end
