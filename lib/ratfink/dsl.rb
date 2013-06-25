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

    def component(description, &block)
      puts description
      #binding.pry
      block.call if block
    end

    def check(description, &block)
      puts description
      block.call if block
    end
  end
end
