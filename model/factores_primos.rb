class Factores_primos

  def calcular(numero)
    divisores = Array.new
    divisor = 2		
    while numero > 1
      while numero % divisor == 0
        divisores << divisor
	numero = numero/divisor
      end
      divisor = divisor + 1
    end		
  divisores
  end
 	
end
