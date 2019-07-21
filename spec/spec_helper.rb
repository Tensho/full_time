$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'full_time'
require 'prawn'

RSpec.configure do |config|
  config.alias_it_behaves_like_to :it_embraces, 'embraces'
end

# PDF 's built-in fonts have very limited support for internationalized text.
# If you need full UTF-8 support, consider using a TTF font instead.
#
# To disable this warning, add the following line to your code:
Prawn::Font::AFM.hide_m17n_warning = true
