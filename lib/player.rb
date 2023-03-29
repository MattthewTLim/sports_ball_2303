#You are expected to write your own tests for the `set_nickname!` and `nickname` methods.
class Player

attr_reader :name, :monthly_cost, :contract_length

def initialize (name, monthly_cost, contract_length)
  @name = name
  @monthly_cost = monthly_cost
  @contract_length = contract_length
end

def first_name
  first_name = name.split(' ').first
end

def last_name
  last_name = name.split(' ').last
end

def total_cost 
  total_cost = contract_length * monthly_cost
end

end