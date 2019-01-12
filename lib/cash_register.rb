require 'pry'

class CashRegister

  attr_accessor :total, :discount

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, amount, quantity=1)
    # amount * quantity
    # self.total += amount
    self.total += amount * quantity
    quanitity.times do
      self.items << title
    end
  end

  def apply_discount(total_price)
    self.discount -= self.total
  end


end
