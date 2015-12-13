module FullTime
  class Education
    def university(name = nil, start_date: nil, end_date: nil, &block)
      if block_given?
        @university = University.new
        @university.name = name
        @university.start_date = start_date
        @university.end_date = end_date
        @university.instance_eval(&block)
      end

      @university
    end
  end
end
