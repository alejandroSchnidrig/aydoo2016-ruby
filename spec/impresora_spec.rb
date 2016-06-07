require 'rspec'
require_relative '../model/impresora'

describe 'impresora' do

  it 'impreme en formato pretty correctamente' do
    mi_array = [2, 2, 2, 3]
    resultado = "2 2 2 3 "
    impresora = Impresora.new
    expect(impresora.formato_pretty(mi_array)).to eq(resultado)
  end

  it 'imprime en formato quiet correctamente' do
    mi_array = [2, 2, 5, 5]
    resultado = "2\n2\n5\n5\n"
    impresora = Impresora.new
    expect(impresora.formato_quiet(mi_array)).to eq(resultado)
  end
			
end
