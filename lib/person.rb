describe 'Person' do
  it 'is defined within lib/person.rb' do
    expect(defined?(Person)).to be_truthy
    expect(Person).to be_a(Class)
  end

  context 'variables defined in lib/person.rb' do
    it 'defines a local variable adele_goldberg as an instance of a Person' do
      adele_goldberg = get_variable_from_file("lib/person.rb", "adele_goldberg")
      expect(adele_goldberg).to be_a(Person)
    end

    it 'defines a local variable alan_kay as an instance of a Person' do
      alan_kay = get_variable_from_file("lib/person.rb", "alan_kay")
      expect(alan_kay).to be_a(Person)
    end
  end
end