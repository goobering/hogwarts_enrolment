require_relative('../db/sqlrunner')
require_relative('./house.rb')
require('pry-byebug')

class Student

attr_reader :id
attr_accessor :first_name, :last_name, :house_id, :age

def initialize(options)
  @id = options['id'].to_i
  @first_name = options['first_name']
  @last_name = options['last_name']
  @house_id = options['house_id']
  @age = options['age'].to_i
end

def save()
  sql = "INSERT INTO students (first_name, last_name, house_id, age) VALUES ('#{@first_name}', '#{@last_name}', #{@house_id}, #{@age})
        RETURNING *;"
  student_data = SqlRunner.run(sql)
  @id = student_data.first()['id'].to_i
end

def find()
  sql = "SELECT * FROM students WHERE students.id = #{@id};"
  result = SqlRunner.run(sql)
  return Student.new(result.first())
end

def find_house()
  sql = "SELECT * FROM houses WHERE houses.id = #{@house_id};"
  result = SqlRunner.run(sql)
  house = House.new(result.first())
  return house
end

def self.find(id)
  sql = "SELECT * FROM students WHERE students.id = #{id};"
  result = SqlRunner.run(sql)
  return Student.new(result.first())
end

def self.all()
  sql = "SELECT * FROM students;"
  result = SqlRunner.run(sql)
  students = result.map { |student| Student.new(student) }
  return students
end

end