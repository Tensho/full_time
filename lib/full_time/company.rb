module FullTime
  class Company
    extend FullTime::DSL

    dsl_attr_accessor :homepage

    attr_accessor :name, :projects

    def initialize
      @projects = []
    end

    def project(name = nil, start_date: nil, end_date: nil, &block)
      if block_given?
        project = Project.new
        project.name = name
        project.start_date = start_date
        project.end_date = end_date
        project.instance_eval(&block)
        @projects << project
        project
      end
    end
  end
end
