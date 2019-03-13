# code here!
require 'pry'

class School

  def initialize(name, roster = {})
    @name = name
    @roster = roster
  end

  def name
    @name
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    if roster[grade] == nil
      roster[grade] = []
    end
    if roster[grade].include?(student) == false
      roster[grade] << student
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    for item in roster.keys
      roster[item] = roster[item].sort
    end
    roster
  end

end
