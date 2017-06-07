require('pg')
require_relative '../models/student.rb'
require_relative '../models/house.rb'

class Admissions

  house_1 = House.new({'name' => 'Gryffindor', 'logo_url' => 'https://vignette2.wikia.nocookie.net/harrypotter/images/e/ee/Gryffindor_Crest-0.jpg'})
  house_2 = House.new({'name' => 'Ravenclaw', 'logo_url' => 'https://vignette4.wikia.nocookie.net/harrypotter/images/2/28/Download_(4).jpg'})
  house_3 = House.new({'name' => 'Hufflepuff', 'logo_url' => 'https://vignette1.wikia.nocookie.net/harrypotter/images/6/62/Download_(9).jpg'})
  house_4 = House.new({'name' => 'Slytherin', 'logo_url' => 'https://vignette1.wikia.nocookie.net/harrypotter/images/7/72/Ccd53034-c798-452a-8032-f28e06250d8f.jpg'})

  house_1.save()
  house_2.save()
  house_3.save()
  house_4.save()

  student_1 = Student.new({'first_name' => 'Harry', 'last_name' => 'Potter', 'house_id' => 1, 'age' => 10})
  student_2 = Student.new({'first_name' => 'Luna', 'last_name' => 'Lovegood', 'house_id' => 2, 'age' => 11})
  student_3 = Student.new({'first_name' => 'Hermione', 'last_name' => 'Granger', 'house_id' => 1, 'age' => 9})
  student_4 = Student.new({'first_name' => 'Draco', 'last_name' => 'Malfoy', 'house_id' => 4, 'age' => 12})
  student_5 = Student.new({'first_name' => 'Cedric', 'last_name' => 'Diggory', 'house_id' => 3, 'age' => 10})

  student_1.save()
  student_2.save()
  student_3.save()
  student_4.save()
  student_5.save()
end