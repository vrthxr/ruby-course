require 'rails_helper'

RSpec.describe 'Books', type: :request do
  def auth_header(user)
    token = JsonWebTokenService.encode(user_id: user.id)
    { 'Authorization' => "Bearer #{token}" }
  end

  describe 'GET /api/v1/books' do
    it 'returns the books list with a token' do
      user = create(:user)
      create(:book)

      get '/api/v1/books', headers: auth_header(user)

      expect(response).to have_http_status(:ok)
      expect(response.parsed_body['data'].size).to eq(1)
    end
  end

  describe 'GET /api/v1/books/:id' do
    it 'returns not found when the book does not exist' do
      user = create(:user)

      get '/api/v1/books/999999', headers: auth_header(user)

      expect(response).to have_http_status(:not_found)
    end
  end

  describe 'GET /api/v1/books/:id' do
      it 'returns forbidden when unauthorized user try to delete' do
      
      user = create(:user)
      
      book = create(:book)
      
      delete "/api/v1/books/#{book.id}", headers: auth_header(user)

      expect(response).to have_http_status(:forbidden)
    end
  end

  describe 'GET /api/v1/books/:id' do
      it 'returns no_content when authorized user delete' do
      
      user = create(:user, :admin)
      
      book = create(:book)
      
      delete "/api/v1/books/#{book.id}", headers: auth_header(user)

      expect(response).to have_http_status(:no_content)
    end
  end
end
