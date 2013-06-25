module Ratfink 
  
  class Application
    def initialize(root)
      @files = Dir.glob("#{root}/**/*_check.rb")
    end

    def run
      @files.each { |filename| Ratfink::DSL.new(File.read(filename)).run }
    end

  end

end

