require "full_time/version"

require "full_time/dsl"
require "full_time/list"

require "full_time/profile"
require "full_time/employment"
require "full_time/education"
require "full_time/certification"
require "full_time/company"
require "full_time/project"
require "full_time/university"
require "full_time/certificate"

require 'tilt'

module FullTime
  def self.profile(&block)
    if block_given?
      @profile = Profile.new
      @profile.instance_eval(&block)
    end

    @profile
  end

  def self.render(template_path)
    Tilt.new(template_path).render(self.profile)
  end
end
