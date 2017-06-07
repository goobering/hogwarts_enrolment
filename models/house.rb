require_relative '../db/sqlrunner'

class House

  attr_reader :id
  attr_accessor :name, :logo_url

  def initialize(options)
    @id = options['id'].to_i
    @name = options[:name]
    @logo_url = options[:logo_url]
  end

  def save()
    sql = "INSERT INTO houses (name, logo_url) VALUES ('#{@name}', '#{@logo_url}')
          RETURNING *;"
    house_data = SqlRunner.run(sql)
    @id = house_data.first()['id'].to_i
  end

  def find()
    sql = "SELECT * FROM houses WHERE houses.id = #{@id}"
    result = SqlRunner.run(sql)
    return House.new(result.first())
  end

  def self.find(id)
    sql = "SELECT * FROM houses WHERE houses.id = #{id}"
    result = SqlRunner.run(sql)
    return House.new(result.first())
  end

  def self.all()
    sql = "SELECT * FROM houses;"
    result = SqlRunner.run(sql)
    return result.map { |house| 
      House.new(house) }
  end
end