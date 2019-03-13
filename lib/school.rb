require 'pry'

class School
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
  @roster
 end

  def add_student(name, grade)
    if @roster.include?(grade)
    @roster[grade] << name
  else
    @roster[grade] = []
    @roster[grade] << name
  end
  end

  def grade(grade_number)
    @roster[grade_number]
  end

  def sort
    @roster.each do |grade, name|
    name.sort!
   end
  end
end
