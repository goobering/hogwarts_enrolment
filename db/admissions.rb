require('pg')
require_relative '../models/student.rb'

class Admissions

  student_1 = Student.new('Harry', 'Potter', 'Gryffindor', 10)
  student_2 = Student.new('Luna', 'Lovegood', 'Ravenclaw', 11)
  student_3 = Student.new('Hermione', 'Granger', 'Gryffindor', 9)
  student_4 = Student.new('Draco', 'Malfoy', 'Slytherin', 12)
  student_5 = Student.new('Cedric', 'Diggory', 'Hufflepuff', 10)

  student_1.save()
  student_2.save()
  student_3.save()
  student_4.save()
  student_5.save()

end