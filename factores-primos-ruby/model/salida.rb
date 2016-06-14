class Salida

  def por_pantalla(datos)
    puts datos
  end

  def por_archivo(datos, ruta)
    File.open(ruta,'w') do |linea|
      linea.puts datos
    end
  end
	
end

