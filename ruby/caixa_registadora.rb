products_a, products_b = 0, 0
preco_a, preco_b = 0, 0

while true
  print "Enter a price followed by its tipe: "
  product = gets.chomp
  string = product.split
  type = string[1]
  price = string[0].to_i

  if price < 0
    break

  else
    if type == 'a'
      preco_a += price
      products_a += 1

    elsif type == 'b'
      preco_b += price
      products_b += 1

    else
      puts "Incorrect type"
    end
  end
end
preco_total_sem_iva = preco_a + preco_b
preco_total_com_iva = preco_a * 0.12 + preco_b * 0.2

print "
Numero de artigos do tipo A: #{products_a}
Numero de artigos do tipo B: #{products_b}
Numero total de artigo:      #{products_a + products_b}
preco total sem Iva:         #{preco_a + preco_b}
preco total com Iva:         #{preco_a * 0.12 + preco_b * 0.2}
"
