require('minitest/autorun')
require('minitest/rg')
require_relative('../single_class_lab.rb')

class TestSingleClass < MiniTest::Test

  def test_student_name
    student = Student.new("Alex", 17)
    assert_equal("Alex", student.name)
  end

  def test_student_cohort
    student = Student.new("Alex", 17)
    assert_equal(17, student.cohort)
  end

  def test_change_name
    student = Student.new("Alex", 17)
    student.name = 'Lacey'
    assert_equal('Lacey', student.name)
  end

  def test_change_cohort
    student = Student.new("Alex", 17)
    student.cohort = 18
    assert_equal(18, student.cohort)
  end

  def test_student_can_talk
    student = Student.new("Alex", 17)
    student.talk()
    assert_equal("I can talk", student.talk())
  end

  def test_favourite_language
    student = Student.new("Alex", 17)
    student.say_favourite_language("Ruby")
    assert_equal("I love Ruby", student.say_favourite_language("Ruby"))
  end
end
