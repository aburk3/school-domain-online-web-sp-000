
require 'pry'

class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    if roster[grade]
      roster[grade] << student_name
    else
      roster[grade] = []
      roster[grade] << student_name
    end
  end

  def grade(grade_to_retrieve)
    roster[grade_to_retrieve]
  end

  def sort
    sorted = {}
    roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    sorted
  end

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    binding.pry
    roster << grade
  end

end
