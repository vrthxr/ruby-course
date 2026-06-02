# frozen_string_literal: true

# Describe - Usado para descrever um grupo de exemplos de teste
# It - Usado para definir um exemplo de teste específico
# Expect - iniciar uma expectativa sobre um determinado objeto ou valor.
# Eq - usado para verificar se dois valores são iguais
# Before Hook: Ele é útil para configurar um estado inicial compartilhado entre os testes.

require "models/game"

RSpec.describe 'Game' do
  before(:each) do
    @game = Game.new('Spider-Man: Miles Morales')
  end
  context 'when dealing with PS5 games' do
    it 'should have a title' do
      expect(@game.title).to eq('Spider-Man: Miles Morales')
    end
    it 'should allow setting and updating the title' do
      @game.title = 'Demon Souls'
      expect(@game.title).to eq('Demon Souls')
      @game.title = 'Ratchet & Clank Rift Apart'
      expect(@game.title).to eq('Ratchet & Clank Rift Apart')

    end
  end
end