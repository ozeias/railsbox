$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

module Railsbox
  VERSION = '0.0.4'
end

require 'railsbox/core_ext/array'
require 'railsbox/core_ext/enumerable'