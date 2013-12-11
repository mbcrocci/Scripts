while true
  print "Enter a  number: "
  number = gets.chomp.to_i

  if number <= 0
    break

  else
    counter = 0

    for num in 1..number
      if number % num == 0
        counter += 1
      end
    end

    if counter == 2
      puts "#{number} is a prime number"
    else
      puts "#{number} is not a prime number"
    end
  end
end
