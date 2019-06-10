class BoatingTest
  @@all = []

  attr_reader :student, :instructor, :name
  attr_accessor :status

  def initialize(name, status, student, instructor)
    @status = status
    @name = name
    @student = student
    @instructor = instructor
    @@all << self
  end

  def self.all
    @@all
  end
end
