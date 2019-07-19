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
require "full_time/course"

module FullTime
  def self.profile(&block)
    profile = Profile.new
    profile.instance_eval(&block)
    profile
  end
end
