require 'rails_helper'

RSpec.describe 'Authentication', type: :request do
  describe 'POST /login' do
it 'returns a token with valid credentials' do
  user = create(:user)

  post '/login', params: { email: user.email, password: '123456' }

  expect(response).to have_http_status(:ok)
  expect(response.parsed_body['token']).to be_present
end
    it 'returns unauthorized with wrong password' do
      User.create(email: "a@a.com", password: "123456" )
      post '/login', params: {email: 'a@a.com', password: 'errada'}
      expect(response).to have_http_status(:unauthorized)
    end
  end
end
