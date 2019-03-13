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

  def add_student(student_name,grade)
    if @roster.has_key?(grade) == true
      @roster[grade].push(student_name)
    else
      @roster[grade] = []
      @roster[grade].push(student_name)
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @new_roster = @roster.sort_by {|grade,name| grade }.to_h
    @new_roster.map do |x|
      @new_roster[x[0]] = x[1].sort
    end
    @new_roster
  end
end
