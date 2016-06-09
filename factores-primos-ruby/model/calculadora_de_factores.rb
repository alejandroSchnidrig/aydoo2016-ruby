class CalculadoraDeFactores

  def initialize;end	

  def calcular(numero)
    raise ArgumentError, "debe ingresar obligatoriamente el numero a factorizar" if numero == nil
    raise ArgumentError, "el numero debe ser positivo" if numero < 0

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
