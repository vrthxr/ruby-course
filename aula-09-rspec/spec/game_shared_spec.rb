require "models/game"

RSpec.shared_examples 'a PS5 game' do
  let(:game) { @game }

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

RSpec.describe 'Game' do
  before(:each) do
    @game = Game.new('Spider Man: Miles Morales', 2020, ['Open-World', 'Action'])
  end

  context 'when dealing with PS5 games' do
    include_examples 'a PS5 game', @game
  end

  context 'role-playing games (RPGs)' do
    before(:each) do
      @rpg_game = Game.new('Demon Souls', 2020, ['RPG','Action'])
    end
    include_examples 'a PS5 game', @rpg_game
  end
end
