require 'rspec' 
require_relative '../model/calculadora_de_factores'

 describe 'calculadora_de_factores' do

  it 'calcula factores primos de 8 correctamente' do
    factor = CalculadoraDeFactores.new
    expect(factor.calcular(8)).to match_array([2, 2, 2])
  end

  it 'calcula factores primos de 58 correctamente' do
    factor = CalculadoraDeFactores.new
    expect(factor.calcular(58)).to match_array([2, 29])
  end

  it 'calcula factores primos de 90 correctamente' do
    factor = CalculadoraDeFactores.new
    expect(factor.calcular(90)).to match_array([2, 3, 3, 5])
  end

  it 'deberia lanzar exception por tener un numero negativo como parametro' do
    factor = CalculadoraDeFactores.new
    expect{factor.calcular(-90)}.to raise_error(ArgumentError)
  end
 
  it 'deberia lanzar exception por no tener parametro' do
    factor = CalculadoraDeFactores.new
    expect{factor.calcular()}.to raise_error(ArgumentError)
  end

end
	

