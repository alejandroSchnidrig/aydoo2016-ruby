class Impresora
	  
  def formato_pretty(array)
    resultado = ""
    array.each do |numero|
      resultado += numero.to_s + " " 
    end
    "Factores primos #{array.inject(:*)}: #{resultado}"	
  end

  def formato_quiet(array)
    resultado = ""
    array.each do |numero|			
      resultado += numero.to_s + "\n"
    end
    "Factores primos #{array.inject(:*)}:\n#{resultado}"		
  end

  def descendente(array)
   array.reverse!
  end

  def ascendente(array)
    array
  end	

  def get_resultado
    @resultado
  end
		 
end
