require 'ratfink'
require 'rails'

module Ratfink
  class Railtie < Rails::Railtie
    rake_tasks do
      load "tasks/ratfink.rake"      
    end
  end
end

