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

  def apply_discount(total_price)
    self.discount -= self.total
  end


end
