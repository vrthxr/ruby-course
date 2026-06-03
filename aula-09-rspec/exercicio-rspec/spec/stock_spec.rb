require "models/stock"

RSpec.shared_examples 'a stock system' do
  let(:stock) { described_class.new }
    it 'add a game to stock' do
      stock.add_game('GTA V', 5)
      expect(stock.games['GTA V']).to eq(5)
    end

    it 'remove a game from stock' do
      stock.add_game('Deadlock', 8)
      stock.remove_game('Deadlock', 5)
      expect(stock.games['Deadlock']).to eq(3)
    end

    it 'verify if game is available' do
      stock.add_game('God of War', 5)
      expect(stock.available?('God of War')).to be true
    end
end

RSpec.describe  Stock do
  it_behaves_like 'a stock system'
end


