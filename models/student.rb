class Student

attr_reader :id
attr_accessor :first_name, :last_name, :house, :age

def initialize(id, first_name, last_name, house, age)
  @id = id
  @first_name = first_name
  @last_name = last_name
  @house = house
  @age = age
end

end