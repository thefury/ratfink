module Ratfink 
  
  class Application
    def initialize(root)
      @files = Dir.glob("#{root}/**/*_check.rb")
    end

    def run
      @files.each { |f| Ratfink::DSL.new(File.read(f)).run }
    end

  end

end

