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

    def pass_student(student, test_name)
        if BoatingTest.all.find { |test| test.test_name == test_name && test.student == student } != nil
            test.test_status = "passed"
        else
            BoatingTest(student, test_name , "passed", self)
        end
    end

    def fail_student(student, test_name)
        if BoatingTest.all.find { |test| test.test_name == test_name && test.student == student } != nil
            test.test_status = "failed"
        else
            BoatingTest(student, test_name , "failed", self)
        end
    end
end
