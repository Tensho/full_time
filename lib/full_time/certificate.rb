module FullTime
  class Certificate
    extend FullTime::DSL

    dsl_attr_accessor :title,
                      :authority,
                      :start_date,
                      :end_date,
                      :license_number,
                      :url
  end
end
