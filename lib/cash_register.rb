require 'pry'
class CashRegister
  
  attr_accessor :discount, :total, :title, :price, :qty, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, qty=1)
    @title = title
    @price = price*qty
    @total += price*qty
    qty.times {@items << title}
  end
  
  def apply_discount
    if discount == 0
      return "There is no discount to apply."
    else
      @total = @total - @total*(discount.to_f/100)
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end
  
  def void_last_transaction
    
  end
end

Pry.start