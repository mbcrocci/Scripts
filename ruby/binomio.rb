class Binomio

  def factorial (x)
      y = 1
      while x > 0
          y *= x
          x -= 1
      end
      y
  end

  def combinacao (n,p)
      factorial(n) / (factorial(p) * factorial(n-p))
  end

  def binomio (a, b, c)
      y = 0
      for p in 0..c
          y += (combinacao(c,p) * a**(c-p) * b**p)
      end
      y
  end

  def run
    puts "(a + b) ^ c"
    puts "Enter a : "
    a = gets.chomp
    puts "Enter b : "
    b = gets.chomp
    puts "Enter c : "
    c = gets.chomp

    print "(#{a} + #{b}) ^ #{c} = #{binomio(a, b, c)}\n"
  end

end
