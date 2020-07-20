require 'spec_helper'

describe 'Dog' do
  it 'is defined within lib/dog.rb' do
    expect(defined?(Dog)).to be_truthy
    expect(Dog).to be_a(Class)
  end

  context 'variables defined in lib/dog.rb' do
    it 'defines a local variable fido as an instance of a Dog' do
      fido = get_variable_from_file("lib/dog.rb", "fido")
      expect(fido).to be_a(Dog)
    end

    it 'defines a local variable snoopy as an instance of a Dog' do
      snoopy = get_variable_from_file("lib/dog.rb", "snoopy")
      expect(snoopy).to be_a(Dog)
    end

    it 'defines a local variable lassie as an instance of a Dog' do
      lassie = get_variable_from_file("lib/dog.rb", "lassie")
      expect(lassie).to be_a(Dog)
    end
  end
end