require_relative('../db/sqlrunner')

class Student

attr_reader :id
attr_accessor :first_name, :last_name, :house, :age

def initialize(first_name, last_name, house, age)
  @id = id
  @first_name = first_name
  @last_name = last_name
  @house = house
  @age = age
end

def save()
  sql = "INSERT INTO students (first_name, last_name, house, age) VALUES ('#{@first_name}', '#{@last_name}', '#{@house}', #{@age})
        RETURNING *;"
  student_data = SqlRunner.run(sql)
  @id = student_data.first()['id'].to_i
end

def find()
  sql = "SELECT * FROM students WHERE students.id = #{@id}"
  result = SqlRunner.run(sql)
  return Student.new(result.first())
end

def self.find(id)
  sql = "SELECT * FROM students WHERE students.id = #{id}"
  result = SqlRunner.run(sql)
  return Student.new(result.first())
end

def self.all()
  sql = "SELECT * FROM students;"
  result = SqlRunner.run(sql)
  return result.map { |student| 
    Student.new(student) }
end

end