require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


toad = Student.new("Toad")
peach = Student.new("Peach")
daisy = Student.new("Daisy")

toad_jetski = toad.add_boating_test("Jetski", "Pass")
toad_canoe =  toad.add_boating_test("Canoe", "Fail")
toad_pontoon = toad.add_boating_test("Pontoon", "Pass")

peach_paddleboat = peach.add_boating_test("Goose Paddleboat", "Pass")
peach_canoe = peach.add_boating_test("Canoe", "Fail")
peach_waterbike = peach.add_boating_test("Waterbike", "Pass")

daisy_canoe = daisy.add_boating_test("Canoe", "Pass")

wario_instructor = Instructor.new("Wario")
waluigi_instructor =  Instructor.new("Waluigi")



binding.pry
0 #leave this here to ensure binding.pry isn't the last line

