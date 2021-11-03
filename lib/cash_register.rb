class CashRegister 
    attr_reader :discount, :items
    attr_accessor :total


    def initialization(discount = nil)
        @total  = 0
        @discount = discount
        @item = []
     

    end

    def void_last_transaction
        @total -= @prev_item[:p] * @prev_item[:q]
    end

    def add_item(title,price, quatity = 1)
        @prev_item  = {t:price, p:price, q: quatity}
      quatity.times {  @items << title}
        @total += price * quatity
    end

    def apply_discount
        if @discount > 0
            @total -= @total * @discount / 100
            return "After the discount, the total comes to $#{@total.to_i}"
        end
        'There is not discount to apply'
    end

    def items
        @items
    end



end


