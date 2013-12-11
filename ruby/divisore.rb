print "Enter a number: "
number = gets.chomp.to_i

for num in 1..number
  if number % num == 0
    print "#{num} e divisor de #{number}"
    counter +=1
  end
end
print "O numero #{number} tem #{num} divisores\n"
