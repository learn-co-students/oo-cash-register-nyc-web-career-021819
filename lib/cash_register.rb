require "pry"

class CashRegister

  attr_accessor :total, :discount, :last_transaction

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @last_transaction = nil
  end

  def add_item(title, price, quantity = 1)
    self.total += (price * quantity)
    @last_transaction = self.total
    quantity.times do
      @items << title
    end
  end

  def apply_discount
    if self.discount > 0
      self.total= self.total.to_f * (1 - self.discount.to_f/100)
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= @last_transaction
  end

end
