require 'pry'
class School
    def initialize(name)
        @name=name
        @roster={}
    end
    def add_student(student, grade)
        if @roster.keys.include?(grade)
        else
            @roster[grade]=[]
        end
        @roster[grade]<<student
    end
    def grade(num)
        return @roster[num]
    end
    def sort
        @roster.each do |grade, students|
            binding.pry
            students.sort!
        end
    end
    def roster
        return @roster
    end
end

# class School
#     def initialize(name)
#         @name=name
#         ROSTER={}
#     end
#     def add_student(student, grade)
#         if ROSTER.keys.include?(grade)
#         else
#             ROSTER[grade]=[]
#         end
#         ROSTER[grade]<<student
#     end
#     def roster
#         return ROSTER
#     end
# end
