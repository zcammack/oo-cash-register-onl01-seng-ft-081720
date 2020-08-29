class CashRegister

attr_accessor :total, :discount

@@items = []

def initialize(discount=0)
  @total = 0
  @discount = discount
end

def add_item(title, price, quantity=1)
  @total += price * quantity
  @@items << title
end

def apply_discount
  if discount != 0
    self.total = (total * ((100.0 - discount.to_f)/100)).to_i
    "After the discount, the total comes to $#{self.total}."
  else
    "There is no discount to apply."
  end
end

  def items

  end
end
