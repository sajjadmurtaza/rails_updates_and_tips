# frozen_string_literal: true

module Api
  module V1
    class StudentsController < ApplicationController
      def index
        @students = Student.with_addresses.load_async
        @students_without_addresses = Student.without_addresses.load_async

        render json: { students: @students, students_without_addresses: @students_without_addresses }
      end
    end
  end
end
