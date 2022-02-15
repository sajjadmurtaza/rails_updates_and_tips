# frozen_string_literal: true

class EnumerableUpdates
  # Rails 7
  # adds support for Enumerable#maximum and Enumerable#minimum
  # to easily calculate the maximum and minimum value from a collection of enumerable elements.

  def self.test_maximum_minimum
    students = new.send :students

    p students.maximum(:age) # 33
    p students.minimum(:age) # 19
  end
  # run EnumerableUpdates.test_maximum_minimum on console

  # ---------------------------------------------------- #

  # Rails 7 introduces the Enumerable#in_order_of method,
  # by which we can order and constrain any enumerable collection using a key-series pair.

  def self.test_in_order_of
    students = new.send :students

    p students.in_order_of(:age, (15..25))
  end

  private

  def students
    student = Struct.new(:age)

    [
      student.new(19),
      student.new(24),
      student.new(33)
    ]
  end
end
