$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'full_time'

RSpec.configure do |config|
  config.alias_it_behaves_like_to :it_embraces, 'embraces'
end
