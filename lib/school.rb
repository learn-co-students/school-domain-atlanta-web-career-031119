require 'pry'
class School
    attr_reader :roster
    def initialize(school)
        @school = school
        @roster = {}
    end

    def add_student(student, grade)
        if @roster.keys.include?(grade)
        else
            @roster[grade]=[]
        end
            @roster[grade]<<student
    end

    def grade(num)
        @roster[num]
    end

    def sort
       @roster=roster.sort.to_h
       @roster.each do |key, value|
            roster[key]=value.sort
       end    
    end
end
