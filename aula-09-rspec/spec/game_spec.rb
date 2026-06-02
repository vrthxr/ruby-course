# frozen_string_literal: true

# Describe - Usado para descrever um grupo de exemplos de teste
# It - Usado para definir um exemplo de teste específico
# Expect - iniciar uma expectativa sobre um determinado objeto ou valor.
# Eq - usado para verificar se dois valores são iguais
# Before Hook: Ele é útil para configurar um estado inicial compartilhado entre os testes.

require "models/game"

RSpec.describe 'Game' do
  before(:each) do
    @game = Game.new('Spider-Man: Miles Morales', 2020, ['Open-World', 'Action'])
  end

  context 'when dealing with PS5 games' do
    it 'should have a title' do
      expect(@game.title).to be_truthy
    end

    it 'should allow setting and updating the title' do
      @game.title = 'Demon Souls'
      expect(@game.title).to eq('Demon Souls')
      @game.title = 'Ratchet & Clank Rift Apart'
      expect(@game.title).to eq('Ratchet & Clank Rift Apart')
    end

    it 'should have a release year within a specific range' do
      expect(@game.release_year).to be_within(1).of(2020)
    end

    it 'should include specific features' do
      expect(@game.features).to include('Open-World')
      expect(@game.features).to include('Action')
    end
  end

  context 'role-playing-games (RPGs)' do
    before(:each) do
      @rpg_game = Game.new('Demon Souls', 2020, ['RPG', 'Action'])
    end

    it 'should have a title' do
      expect(@rpg_game.title).to be_truthy
    end

    it 'should have a release year within a specific range' do
      expect(@rpg_game.release_year).to be_within(1).of(2020)
    end

    it 'should include specific features' do
      expect(@rpg_game.features).to include('RPG')
      expect(@rpg_game.features).to include('Action')
    end
  end
end
