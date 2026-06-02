# Describe - Usado para descrever um grupo de exemplos de teste
# It - Usado para definir um exemplo de teste específico
# Expect - iniciar uma expectativa sobre um determinado objeto ou valor.
# Eq -  usado para verificar se dois valores são iguais
# Verificar se dois valores são iguais:
# frozen_string_literal: true



class Game
  attr_accessor :title
    def initialize (title)
        @title = title
    end
end

RSpec.describe 'Game' do
  context 'when dealing with PS5 games' do
       it 'should have a title' do
          game = Game.new('Spider-Man: Miles Morales')
          expect(game.title).to eq('Spider-Man 2')                 
       end 
  end  
end