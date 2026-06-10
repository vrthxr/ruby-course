FactoryBot.define do
  factory :book do
    title { 'Livro Teste' }
    body { 'corpo qualquer' }
    author
  end
end