require_relative 'calculadora_de_factores.rb'
require_relative 'impresora.rb'
require_relative 'salida.rb'

class Presentacion

  def ejecutar(numero, orden, formato)
   resultado = ""  
   calculadora = CalculadoraDeFactores.new
   impresora = Impresora.new
   salida = Salida.new
   
   miArray =  calculadora.calcular(numero)
   
   if orden == "--sort:des"
     impresora.descendente(miArray)
   end		

   if formato == "--format=pretty"
     resultado = impresora.formato_pretty(miArray)
   elsif formato == "--format=quiet"
     resultado = impresora.formato_quiet(miArray)
   else
     raise ArgumentError, "formato invalido"
   end

   resultado

  end

end
