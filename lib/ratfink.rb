require "ratfink/version"
require "ratfink/check"
require "ratfink/namespace"

module Ratfink
  # Rake tasks 
  require 'ratfink/railtie' if defined?(Rails)
end
