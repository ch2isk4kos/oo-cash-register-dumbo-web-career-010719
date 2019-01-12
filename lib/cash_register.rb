require 'pry'

class CashRegister

  attr_accessor :total, :discount, :final_total

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, amount, quantity=1)
    # amount * quantity
    # self.total += amount
    self.total += amount * quantity
  end

  def apply_discount
    if @discount != 0
      self.total = (total * ((100.0 - discount.to_f)/100)).to_i
      "Your total is $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

end
