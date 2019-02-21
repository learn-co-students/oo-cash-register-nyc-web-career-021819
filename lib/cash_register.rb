require 'pry'

class CashRegister
  attr_accessor :total, :discount, :quantity, :items
  def initialize(discount =0)
    @total =0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity =1)
    @total += price* quantity

    if quantity > 1
      count = 0
      while count < quantity
        @items << title
        count +=1
      end
    else
      @items << title
    end
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
     @total -= @total * @discount/100
    return "After the discount, the total comes to $#{@total}."
    end
  end

  def void_last_transaction
    @total -= total
  end

end
