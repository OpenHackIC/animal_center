%w(helpers models presenters).each do |subdir|
  $LOAD_PATH.push File.expand_path("../../app/#{ subdir }", __FILE__)
end

require 'ostruct'
require 'active_support/core_ext'
require 'active_support/time_with_zone'
