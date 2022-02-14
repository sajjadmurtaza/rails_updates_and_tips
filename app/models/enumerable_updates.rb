# frozen_string_literal: true

class EnumerableUpdates
  # Rails 7
  # adds support for Enumerable#maximum and Enumerable#minimum
  # to easily calculate the maximum and minimum value from a collection of enumerable elements.

  def self.test_maximum_minimum
    student = Struct.new(:age)

    students = [
      student.new(19),
      student.new(24),
      student.new(33)
    ]

    p students.maximum(:age) # 33
    p students.minimum(:age) # 19
  end
end

# run EnumerableUpdates.test_maximum_minimum on console
