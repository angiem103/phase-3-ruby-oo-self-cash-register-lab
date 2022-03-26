
class CashRegister

    attr_reader :discount, :items
    attr_accessor :total, :last_price

    def initialize(employee_discount = 0)
        @total = 0
        @discount = employee_discount
        @items = []
        @last_price = 0
    end

    def add_item(title, price, quantity = 1)
        self.total += price * quantity
        quantity.times do
            self.items << title
        end
        @last_price = price * quantity
    end

    def apply_discount
        if @discount > 0
            new_discount = self.total * @discount/100
            self.total -= new_discount
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= @last_price
        if 
            self.total == 0
             'returns the total to 0.0 if all items have been removed'
        end
    end


end
