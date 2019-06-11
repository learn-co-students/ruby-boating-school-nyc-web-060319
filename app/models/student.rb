require_relative 'boatingtest'

class Student
    @@all = []
    attr_reader :first_name
    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name, test_status ,instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def self.find_student(first_name)
        all.find {|student| student.first_name == first_name}
    end

    def all_student_test
        BoatingTest.all.select{|test| test.student == self}
    end

    def grade_percentage
        total_test = self.all_student_test.length
        tests_passed = 0
        self.all_student_test.each do |test|
            if test.test_status == "passed"
                tests_passed += 1
            end
        end
        (tests_passed/(total_test/1.0))*100
    end
end