require "pry"

class CashRegister
  attr_accessor :total, :last_transaction_amount
  attr_reader :discount

  def initialize(discount=0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(title, price, quantity=1)
  @last_transaction_amount = (price*quantity)
  @total+=@last_transaction_amount
    quantity.times do
    @items << title
    end
  end

  def apply_discount
    if @discount > 0
      @total = ((@total.to_f)*(1-(@discount.to_f/100))).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_transaction_amount
  end

  def items
    @items
  end

  def total
    @total
  end

end
