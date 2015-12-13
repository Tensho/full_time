module FullTime
  class Certification
    attr_accessor :courses

    def initialize
      @courses = List.new
    end

    def courses(&block)
      if block_given?
        @courses.instance_eval(&block)
      end

      @courses
    end

    def course(&block)
      if block_given?
        course = Course.new
        course.instance_eval(&block)
        @courses << course
        course
      end
    end
    # alias :course, :certification
  end
end
