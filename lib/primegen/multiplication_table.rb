require 'matrix'
require 'terminal-table'

module Primegen
	module MultiplicationTable

		# Using Vectors to create rows and adding it to multiplication table.
		# Dropping 1 since it is not a prime number.
		# Setting table title and row headings.
		def self.output(primes, n)
			table = Terminal::Table.new do |t|
				t.title = "Multiplcation table of first #{n} primes"
				primes.drop(1).each do |e|
				  t << (Vector.elements(primes) * e).to_a 
			    end
			    primes[0] = "X"
			    t.headings = primes
			end
			table
		end
	end
end