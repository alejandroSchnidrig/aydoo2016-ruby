require 'rspec' 
require_relative '../model/factores_primos'

describe 'Foo' do

  it 'should return foo when do_foo' do
    foo = Factores_primos.new
    expect(foo.do_foo).to eq 'foo'
  end

end
