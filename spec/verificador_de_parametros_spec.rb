require 'rspec'
require_relative '../model/verificador_de_parametros'

describe 'verificador_de_parametros' do

  it 'guarda el formato que le corresponde correctamente' do
    formato_esperado = "--format=quiet"
    argv = ["--format=quiet", "10", "--sort:des"]
    verificador = VerificadorDeParametros.new
    verificador.verificar(argv)
    expect(verificador.formato).to eq(formato_esperado)
  end

  it 'guarda el numero que le corresponde correctamente' do
    numero_esperado = 10
    argv = ["--format=quiet", "10", "--sort:des"]
    verificador = VerificadorDeParametros.new
    verificador.verificar(argv)
    expect(verificador.numero).to eq(numero_esperado)
  end

  it 'guarda la ruta que le corresponde correctamente' do
    ruta_esperada = "home/a.txt"
    argv = ["--format=quiet", "10", "--output-file=home/a.txt"]
    verificador = VerificadorDeParametros.new
    verificador.verificar(argv)
    expect(verificador.ruta).to eq(ruta_esperada)
  end

  it 'guarda el orden que le corresponde correctamente' do
    orden_esperado = "--sort:des"
    argv = ["--format=quiet", "10", "--sort:des"]
    verificador = VerificadorDeParametros.new
    verificador.verificar(argv)
    expect(verificador.orden).to eq(orden_esperado)
  end

  it 'deberia lanzar exception por tener muchos argumentos' do
    argv = ["--format=quiet", "10", "--sort:des", "5", "6"]
    verificador = VerificadorDeParametros.new
    expect{verificador.verificar(argv)}.to raise_error(ArgumentError)
  end

  it 'deberia lanzar exception por no tener argumentos' do
    argv = []
    verificador = VerificadorDeParametros.new
    expect{verificador.verificar(argv)}.to raise_error(ArgumentError)
  end



end

