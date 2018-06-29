module Primegen
	class Generator

		attr_reader :n

		def initialize(n)
			@n = n
		end
        
        # Adding 1 to sieve structure to use it in the creation of multiplication table later.
	  	# Adding 2 - the only even prime number to sieve structure.
	  	# Sieving only odd numbers to improve complexity.
	  	# Stepping only till sqrt of n since if its not a prime it would be already marked
	  	# by a multiple of a number less than the sqrt of n.
        def run
        	sieve_map = {1 => 1, 2 => 2}
	  		sieve = (3..n).step(2).inject(sieve_map) {|k,v| k[v] = v; k}
	  		(3..Math.sqrt(n)).each do |i|
	  			unless sieve[i].nil?
		  			sieve[i].step(n, sieve[i]) do |j|
		  				sieve.delete(j) unless j == sieve[i]
		  			end
		  		end
	  		end
	  		sieve.keys
        end
	end
end