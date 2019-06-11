# `Student` class:

# Y should initialize with `first_name`

# Y `Student.all` should return all of the student instances

# Y `Student#add_boating_test` should initialize a new boating test with 
#    a Student (Object), a boating test name (String), a boating test status (String), 
#    and an Instructor (Object)

# Y `Student.find_student` will take in a first name and output
#    the student (Object) with that name

# Y `Student#grade_percentage` should return the percentage of tests 
#    that the student has passed, a Float 
#    (so if a student has passed 3 / 9 tests that they've taken, this method should return 
#    the Float `33.33`)


class Student

    attr_reader :first_name

    attr_accessor :boating_test

    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_student(first_name)
        self.all.find { |student| student.first_name == first_name }
    end

    def add_boating_test(test_name, test_status)
        new_b_test = BoatingTest.new(self, test_name, test_status)
    end

    def my_tests
        BoatingTest.all.select{ |test| test.student == self }
    end

    def passing_tests
        my_tests.select { |my_test| my_test.test_status == "Pass"}
    end

    def grade_percentage #returns percentage of tests stuent
        (self.passing_tests.length.to_f / self. my_tests.length.to_f).round(2)
    end

end
