require 'pessoa'

describe 'Atributos' do
    it 'have_attributes' do
        pessoa = Pessoa.new
        pessoa.nome = "Jorge"
        pessoa.idade = 42

        expect(pessoa).to have_attributes(nome: "Jorge", idade: 42)
        expect(pessoa).to have_attributes(nome: starting_with("J"), idade: (be >= 42))
        expect(pessoa).to have_attributes(nome: a_string_starting_with("J"), idade: (a_value >= 42))
    end
end