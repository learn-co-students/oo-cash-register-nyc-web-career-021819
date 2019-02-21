
# CashRegister
# ::new
#   sets an instance variable @total on initialization to zero (FAILED - 1)
#   optionally takes an employee discount on initialization (FAILED - 2)
# #total
#   returns the current total (FAILED - 3)
# #add_item
#   accepts a title and a price and increases the total (FAILED - 4)
#   also accepts an optional quantity (FAILED - 5)
#   doesn't forget about the previous total (FAILED - 6)
# #apply_discount
#   the cash register was initialized with an employee discount
#     applies the discount to the total price (FAILED - 7)
#     returns success message with updated total (FAILED - 8)
#     reduces the total (FAILED - 9)
#   the cash register was not initialized with an employee discount
#     returns a string error message that there is no discount to apply (FAILED - 10)
# #items
#   returns an array containing all items that have been added (FAILED - 11)
# #void_last_transaction
#   subtracts the last transaction from the total (FAILED - 12)

class CashRegister

    attr_accessor :total
    attr_accessor :discount
    attr_accessor :price
    attr_accessor :quantity
    

    def initialize(discount=nil)
        @total = 0
        @discount = discount
        @title_a = []
    end

    def add_item(title, price, quantity=1)
        @price = price
        @quantity = quantity
        @total += price * quantity
        quantity.times do
        @title_a << title
        end
    end

    def apply_discount
        if discount != nil
            @total = @total * (1 - discount * 0.01)
            return "After the discount, the total comes to $#{@total.round}."
        else
            return "There is no discount to apply."
        end
    end

    def items
        @title_a
    end

    def void_last_transaction
        puts @price.inspect
        @total = @total - @price
    end



end

