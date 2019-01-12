require 'pry'

class CashRegister

  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity=0)
    num_of_items = quantity
    num_of_items * price
    self.total += price
  end


end
