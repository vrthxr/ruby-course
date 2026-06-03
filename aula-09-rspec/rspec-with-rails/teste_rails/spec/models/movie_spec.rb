require 'rails_helper'

RSpec.describe Movie, type: :model do
  it 'is valid with valid attributes' do
    movie = Movie.new(
      title: 'Example movie',
      description: 'This is an example movie',
      director: 'Jhon Doe',
      duration: 120,
    )

    expect(movie).to be_valid
  end

  context "when  there are movies with duration" do
    it "return the correct average duration" do
      Movie.create(title:'Movie 1', duration: 120)
      Movie.create(title:'Movie 2', duration: 90)
      Movie.create(title:'Movie 2', duration: 150)

      average_duration = Movie.average_duration

      expect(average_duration).to eq(120)
    end
  end
end