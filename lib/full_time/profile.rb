module FullTime
  class Profile
    extend FullTime::DSL

    dsl_attr_accessor :name, :email, :homepage, :github, :linkedin, :twitter, :goodreads, :location, :extra

    def initialize
      @skills = List.new
      @interests = List.new
    end

    def skills(&block)
      if block_given?
        @skills.instance_eval(&block)
      end

      @skills
    end

    def employment(&block)
      if block_given?
        @employment = Employment.new
        @employment.instance_eval(&block)
      end

      @employment
    end

    def education(&block)
      if block_given?
        @education = Education.new
        @education.instance_eval(&block)
      end

      @education
    end

    def certification(&block)
      if block_given?
        @certification = Certification.new
        @certification.instance_eval(&block)
      end

      @certification
    end

    def interests(&block)
      if block_given?
        @interests.instance_eval(&block)
      end

      @interests
    end
  end
end
