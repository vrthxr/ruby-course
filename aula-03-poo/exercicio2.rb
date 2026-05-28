class FinancialTransaction
  attr_reader :to, :from, :amount
  attr_accessor :completed 

  def initialize(to, from, amount, completed)
    @to = to
    @from = from
    @amount = amount
    @completed = completed
  end

  def to_s
    "#{to}-#{from}-#{amount}-#{completed}"
  end

  def transactionvalues
    puts "###VALOR TRANSFERIDO###"
    puts "O valor de #{amount} reais transferido foi enviado por: #{from}"
    puts "O valor foi enviado para: #{to}"
    puts "#######################"
  end
end

transaction1 = FinancialTransaction.new("Robson", "Arthur", 500, true)
transaction1.transactionvalues