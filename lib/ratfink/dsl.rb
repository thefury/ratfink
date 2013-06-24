module Ratfink
  class DSL
    attr_accessor :source

    def initialize src=''
      @source = src
    end

    def run
      raise ArgumentError if @source.empty?

      instance_eval(@source)
    end

    def component(description)
      puts description
    end

    def check(description)
      puts description
    end
  end
end
