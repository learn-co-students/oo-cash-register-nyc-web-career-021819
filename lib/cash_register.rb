require 'pry'

class CashRegister
    def initialize(discount = 0, total = 0)
        # binding.pry
        @total = total
        @discount = discount
        @item = {}
        @items = []
    end

    attr_accessor :total, :discount, :items
    attr_reader :items

    def add_item(item, price, quantity = 1)
        # binding.pry
        self.total += (price * quantity)
        quantity.times do 
            @items.push(item)
        end
        @item[item] = price
    end

    def apply_discount()
        if @discount == 0
            return "There is no discount to apply."
        end
        self.total *= ((100 - discount) / 100.0)
        "After the discount, the total comes to $#{@total.to_i}."
    end

    def void_last_transaction
        # binding.pry
        last_item = @items[-1]
        last_item_price = @item[last_item]
        @total -= last_item_price
    end

end
