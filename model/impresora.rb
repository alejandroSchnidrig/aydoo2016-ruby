class Impresora
  
  def formato_pretty(array)
    resultado = ""
    array.each do |numero|
      resultado += numero.to_s + " " 
    end
    resultado
  end

  def formato_quiet(array)
    resultado = ""
    array.each do |numero|			
      resultado += numero.to_s + "\n"
    end
    resultado
  end
 
end
