class CashRegister

attr_accessor :total, :discount

def initialize(discount=0)
  @total = 0
  @discount = discount
end

def add_item(title, price, quantity=1)
  @total += price * quantity
end

def apply_discount
  self.total = (total * ((100.0 - discount.to_f)/100)).to_i
  "After the discount, the total comes to $#{self.total}."
end

end
