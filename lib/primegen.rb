require "primegen/version"
require "primegen/generator"
require "primegen/multiplication_table"
require "thor"

module Primegen
  class Utility < Thor
  	
  	desc "print", "Prints a multiplication table of first n primes"
  	method_option :n, :type => :numeric, :default => 10

  	def print()
  		n = options[:n]
  		return puts "Creation of multiplication table is not optimized for N > 1000. N should be <= 1000" if n > 1000
  		primes = Generator.new(n).run
        puts MultiplicationTable.output(primes, n)
  	end
  	default_task :print
  end
end
