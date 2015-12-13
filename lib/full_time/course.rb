module FullTime
  class Course
    extend FullTime::DSL

    dsl_attr_accessor :title, :company, :homepage
  end
end
