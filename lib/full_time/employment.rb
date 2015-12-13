module FullTime
  class Employment
    attr_accessor :companies

    def initialize
      @companies = []
    end

    def company(name = nil, &block)
      if block_given?
        company = Company.new
        company.name = name
        company.instance_eval(&block)
        @companies << company
        company
      end
    end
  end
end
