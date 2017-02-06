require ('minitest/autorun')
require_relative('./class_homework')

class TestCodeClanStudent < MiniTest::Test

  def test_student_name
    student = CodeClanStudent.new("Ross", "Cohort 10")
    assert_equal("Ross", student.student_name)
  end

  def test_cohort
    student = CodeClanStudent.new("Ross", "Cohort 10")
    assert_equal("Cohort 10", student.cohort)
  end

  def test_set_name
    student = CodeClanStudent.new("Ross", "Cohort 10")
    student.set_name("David")
    assert_equal("David", student.student_name)
  end

  def test_set_cohort
    student = CodeClanStudent.new("Ross", "Cohort 10")
    student.set_cohort("Cohort 8")
    assert_equal("Cohort 8", student.cohort)
  end

  def test_talk
    student = CodeClanStudent.new("Ross", "Cohort 10")
    assert_equal("I can talk!", student.talk)
  end
  
end