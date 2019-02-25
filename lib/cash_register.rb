require 'pry'

class CashRegister

  attr_accessor :discount, :total, :item

  def initialize(discount = 20)
    @total = 0.00
    @discount = discount
    @item = []
  end

  def add_item(title,price,quantity=1)
    self.total += price.to_f * quantity.to_f
    i = 0
    while i < quantity.to_i
    self.item << title
    i += 1
  end
  end


  def apply_discount
    if self.total != 0.00
    @total = self.total * (100 - self.discount) / 100
    return "After the discount, the total comes to $#{@total.to_i}."
  elsif self.total == 0.00
    return "There is no discount to apply."

  end
  end


  def items
    self.item
end

  def void_last_transaction
    self.total = 0.00
  end


end
