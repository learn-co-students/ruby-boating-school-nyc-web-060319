class Instructor
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def boating_tests
    BoatingTest.all.select do |test|
      test.instructor == self
    end
  end

  def pass_student(student, test_name)
    test_to_pass = boating_tests.find do |test|
      test.student == student && test.name == test_name
    end

    if test_to_pass
      test_to_pass.status = "passed"
      return test_to_pass
    end
    BoatingTest.new(test_name, "passed", student, self)
  end

  def fail_student(student, test_name)
    test_to_fail = boating_tests.find do |test|
      test.student == student && test.name == test_name
    end

    if test_to_fail
      test_to_fail.status = "failed"
      return test_to_fail
    end
    BoatingTest.new(test_name, "failed", student, self)
  end
end
