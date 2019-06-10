class Student
  @@all = []

  attr_reader :first_name

  def initialize(name)
    @first_name = name
    @@all << self
  end

  def add_boating_test(name, status, instructor)
    BoatingTest.new(name, status, self, instructor)
  end

  def boating_tests
    BoatingTest.all.select do |test|
      test.student == self
    end
  end

  def grade_percentage
    pass_count = boating_tests.count do |test|
      test.status == "passed"
    end
    pass_count / boating_tests.size.to_f
  end

  def self.all
    @@all
  end

  def self.find_student(name)
    @@all.find do |student|
      student.first_name == name
    end
  end
end
