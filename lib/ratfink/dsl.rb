require 'colorize'

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
      puts 
      puts "==== #{description}"
      
      
      block.call if block
    end

    def check(description, &block)
      res = block.call if block
      outp = res ? '[P]'.green : '[F]'.red

      puts "%-45s %3s" % [ description, outp ] 
    end
  end
end
