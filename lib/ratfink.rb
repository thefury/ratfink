require "ratfink/version"
require "ratfink/application"
require "ratfink/dsl"

module Ratfink
  # Rake tasks 
  require 'ratfink/railtie' if defined?(Rails)
end
