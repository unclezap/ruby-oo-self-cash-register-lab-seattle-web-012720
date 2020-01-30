class CashRegister
    attr_accessor :discount, :total
    
    
    def initialize(discount=0)
        @discount = discount
        @total = 0
        @all_items = []
        @all_items_values = []
    end
    
    def total
        @total
    end
    def add_item(title, price, number=1)
       @title = title
       @number = number
        @price = price
        @total += @price * @number
        i = 0
        while i < @number
            @all_items << @title
            i += 1
        end
        @all_items_values << @number
        @all_items_values << @price
        @all_items_values << @title
    end
    def apply_discount
        self.total = self.total - self.total * @discount * 0.01
        rounded_total = 0
        rounded_total = self.total
        rounded_total = rounded_total.round
        if self.discount == 0
            "There is no discount to apply."
        else
            "After the discount, the total comes to $#{rounded_total.round}."
        end
    end
    def items
       @all_items
    end
    def void_last_transaction
        last_item_price = 0
        last_item_price = @all_items_values[-2] * @all_items_values[-3]
        self.total -= last_item_price
    end
end

