class CashRegister

attr_accessor :total

def initialize
  @total = 0
end

def discount
  discount = 20
end

def add_item(title, price, quantity=0)
  @total += price
end

end
