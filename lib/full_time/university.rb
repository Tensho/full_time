module FullTime
  class University
    extend FullTime::DSL

    dsl_attr_accessor :title

    attr_accessor :name, :start_date, :end_date
  end
end
