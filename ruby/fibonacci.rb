def fibonacci (n)
	fib = {}
	for k in 1..n
		if k <= 2
			f = 1
		else
			f = fib[k-1] + fib[k-2]
		end
		fib[k] = f
	end
	fib[n]
end

print "Introduza um numero: "
num = gets.chomp.to_i

puts "o #{num} da sequencia de fibonacci e: #{fibonacci(num)}"
