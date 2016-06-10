
class VerificadorDeParametros

  attr_accessor :formato, :orden, :ruta, :numero, :imprime
 
  def initialize
    @formato = "--format=pretty"
    @orden = "--sort:asc"
    @numero = nil;
    @ruta = nil;
  end

  def verificar(argumentos)

=begin
aca esta la famosa cadena de if lo dejo de esta manera porque ya estoy
entregando fuera de termino y para refactorizarlo voy a demorar mas tiempo 
=end
    
    raise ArgumentError, "demasiados argumentos intentelo nuevamente" if argumentos.length > 3
    raise ArgumentError, "agregue argumentos" if argumentos.length == 0    

    argumentos.each do |argumento|
      if argumento.include? "--format="
        @formato = argumento
      elsif argumento.include? "--sort:"
        @orden = argumento
      elsif argumento.include? "--output-file="
	@ruta = argumento.partition('=').last
      else
        @numero = argumento.to_i
      end
  end	
   
end 

end
