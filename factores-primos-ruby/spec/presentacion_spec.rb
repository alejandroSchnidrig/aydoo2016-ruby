require 'rspec'
require_relative '../model/presentacion'
 
describe 'presentacion' do

 it 'realiza una presentacion correctamente' do
   presentacion = Presentacion.new
   numero = 20
   orden = "--asc:des"
   formato = "--format=quiet"
   resultado = "Factores primos 20:\n2\n2\n5\n"
   expect(presentacion.ejecutar(numero, orden, formato)).to eq(resultado)
 end

 it 'realiza otra presentacion correctamente' do
   presentacion = Presentacion.new
   numero = 100 
   orden = "--asc:asc"
   formato = "--format=pretty"
   resultado = "Factores primos 100: 2 2 5 5 "
   expect(presentacion.ejecutar(numero, orden, formato)). to eq(resultado)
 end
 
end
