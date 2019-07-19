module FullTime
  class Certificate
    extend FullTime::DSL

    dsl_attr_accessor :title, :company, :homepage
  end
end
