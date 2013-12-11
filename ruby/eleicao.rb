class Eleicao

  def initialize (eleitores, votos_brancos, votos_nulos, votos_validos)

    @eleitores = eleitores
    @votos_brancos = votos_brancos
    @votos_nulos = votos_nulos
    @votos_validos = votos_validos

  end

  def numero_total_votos
    @votos_brancos + @votos_nulos + @votos_validos
  end

  def percetagem_votos_brancos
    (@votos_brancos / @eleitores) * 100
  end

  def percetagem_votos_nulos
    (@votos_nulos / @eleitores) * 100
  end

  def percetagem_votos_validos
    (@votos_validos / @eleitores) * 100
  end

  def abstencao
    ((@eleitores - numero_total_votos()) / @eleitores) * 100
  end

end



camara = Eleicao.new(ARGV[0].to_f, ARGV[1].to_f,
                     ARGV[2].to_f, ARGV[3].to_f)


# control if there more votes than people
if camara.numero_total_votos() > ARGV[0].to_f
  abort("There is more votes than electores")
end

print("
Numero de eleitores de um municipio #{ARGV[0].to_f}
numero total de votos:  #{camara.numero_total_votos}
percetagem de votos brancos: #{camara.percetagem_votos_brancos}%
percetagem de votos nulos: #{camara.percetagem_votos_nulos}%
percetagem de votos validos: #{camara.percetagem_votos_validos}%
Abstencao: #{camara.abstencao}%

")
