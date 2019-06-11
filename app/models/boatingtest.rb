
# `BoatingTest` class:
# Y should initialize with Student (Object), a boating test name (String), 
#   a boating test status (String), and an Instructor (Object)

# Y `BoatingTest.all` returns an array of all boating tests

class BoatingTest

    @@all = []

    attr_reader :student

    attr_accessor :test_name, :test_status

    def initialize(student, test_name, test_status)
        @student, @test_name, @test_status = student, test_name, test_status
        @@all << self
    end

    def self.all
        @@all
    end
    

end
