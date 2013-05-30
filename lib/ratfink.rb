require "ratfink/version"

module Ratfink
  # Rake tasks 
  require 'ratfink/railtie' if defined?(Rails)
  # Your code goes here...
end
