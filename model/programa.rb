
require_relative 'verificador_de_parametros'
require_relative 'presentacion'
require_relative 'salida'

  presentacion = Presentacion.new
  verificador = VerificadorDeParametros.new
  salida = Salida.new

  verificador.verificar(ARGV)
  
  numero = verificador.numero
  formato = verificador.formato
  orden = verificador.orden
  ruta = verificador.ruta	

  resultado = presentacion.ejecutar(numero, orden, formato)	
	
  if ruta == nil
    salida.por_pantalla(resultado)
  else
    salida.por_archivo(resultado,ruta) 
  end


