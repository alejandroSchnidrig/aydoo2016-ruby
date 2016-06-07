require 'rspec' 
require_relative '../model/factores_primos'

 describe 'factores_primos' do

  it 'calcula factores primos de 8 correctamente' do
    factor = FactoresPrimos.new
    expect(factor.calcular(8)).to match_array([2, 2, 2])
  end

  it 'calcula factores primos de 58 correctamente' do
    factor = FactoresPrimos.new
    expect(factor.calcular(58)).to match_array([2, 29])
  end

  it 'calcula factores primos de 90 correctamente' do
    factor = FactoresPrimos.new
    expect(factor.calcular(90)).to match_array([2, 3, 3, 5])
  end
	

end
	

