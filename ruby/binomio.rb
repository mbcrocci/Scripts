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
