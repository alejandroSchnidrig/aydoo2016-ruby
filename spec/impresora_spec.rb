require 'rspec'
require_relative '../model/impresora'

describe 'impresora' do

  it 'impreme en formato pretty orden ascendente correctamente' do
    mi_array = [2, 2, 2, 3]
    resultado = "2 2 2 3 "
    impresora = Impresora.new
    impresora.ascendente(mi_array)	
    expect(impresora.formato_pretty(mi_array)).to eq(resultado)
  end

  it 'imprime en formato quiet orden ascendente correctamente' do
    mi_array = [2, 2, 5, 5]
    resultado = "2\n2\n5\n5\n"
    impresora = Impresora.new
    impresora.ascendente(mi_array)
    expect(impresora.formato_quiet(mi_array)).to eq(resultado)
  end

  it 'imprime en formato pretty orden descendente correctamente' do
    mi_array = [2, 2, 2, 3]
    resultado = "3 2 2 2 "
    impresora = Impresora.new
    impresora.descendente(mi_array)
    expect(impresora.formato_pretty(mi_array)).to eq(resultado)
  end

  it 'imprime en formato quiet orden descendente correctamente' do
    mi_array = [2, 2, 5, 5]
    resultado = "5\n5\n2\n2\n"
    impresora = Impresora.new
    impresora.descendente(mi_array)	
    expect(impresora.formato_quiet(mi_array)).to eq(resultado)
  end
			
end
