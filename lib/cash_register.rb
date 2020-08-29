class CashRegister

attr_accessor :total, :discount, :items, :last_item

def initialize(discount=0)
  @total = 0
  @discount = discount
  @items = []
  @last_item = last_item
end

def add_item(title, price, quantity=1)
  @total += price * quantity
  counter = 0
  while counter < quantity
    @items << title
    counter += 1
  end
  last_item = price
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
    @items
  end

  def void_last_transaction
    self.total -= @last_item
  end
end
