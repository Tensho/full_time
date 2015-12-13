module FullTime
  class Project
    extend FullTime::DSL

    dsl_attr_accessor :homepage, :description, :title

    attr_accessor :name, :start_date, :end_date

    def initialize
      @technologies = List.new
      @achievements = List.new
    end

    def technologies(&block)
      if block_given?
        @technologies.instance_eval(&block)
      end

      @technologies
    end

    def achievements(&block)
      if block_given?
        @achievements.instance_eval(&block)
      end

      @achievements
    end
  end
end
