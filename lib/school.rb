class School 

    attr_accessor :school, :roster

    def initialize(school)
        @school = school
        @roster = {}
    end 

    def add_student(name, grade)
        @roster[grade] ||=[]
        @roster[grade] << name
    end 

    def grade(grade)
        return @roster[grade]
    end

    def sort 
        hash = {}
        @roster.each do |grade, students|
            hash[grade] = students.sort
        end 
        hash
    end 
end 