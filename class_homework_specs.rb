require ('minitest/autorun')
require_relative('./class_homework')

class TestBankAccount < MiniTest::Test

  def test_student_name
    student = CodeClanStudent.new("Ross", "Cohort 10")
    assert_equal("Ross", student.student_name)
  end

  def test_cohort
    student = CodeClanStudent.new("Ross", "Cohort 10")
    assert_equal("Cohort 10", student.cohort)
  end
  
end