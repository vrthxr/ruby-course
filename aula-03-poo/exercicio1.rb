class Projeto
  def initialize
    @name="Automação Web"
    @budget = 10000
    @members = ["Fulano", "Siclano"]
  end

  def name
    @name
  end

  def budget
    @budget
  end

  def members
    @members
  end

  def budget=(new_budget)
    @budget = new_budget
  end

  def name=(new_name)
    @name = new_name
  end

  def members=(new_members)
    @members = new_members
  end

  def to_s
    "#{@name}-#{@budget}-#{@members}"
  end

end

projeto = Projeto.new
p projeto.name, projeto.budget, projeto.members
projeto.budget = "15000"
p projeto.budget
projeto.members = "Robson"
p projeto.members
projeto.name = "Gosto de comer sabonete"
p projeto.members

p projeto.name, projeto.budget, projeto.members
