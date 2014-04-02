require_relative '../lib/board_view'
require_relative '../lib/ai'
require_relative '../lib/constants'

RSpec.configure do |config|
  config.color = true
  config.add_formatter('documentation')
end