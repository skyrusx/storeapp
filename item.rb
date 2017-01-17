class Item

  @@discount = 0.1 # переменная класса

  def self.discount # Метод класса
    if Time.now.month == 4
      @@discount += 0.2
    else
      @@discount
    end
  end

  def initialize(options={})
    @real_price  = options[:price]  # object property
    @name        = options[:name]   # object property
  end

  attr_reader :real_price, :name # getters
  attr_writer :price             # setters

  def info
    yield(price)
    yield(name)
  end

  def price
    (@real_price - @real_price*self.class.discount) + tax if @real_price
  end

  private
    def tax
      type_tax = if self.class == VirtualItem
        1
      else
        2
      end

      cost_tax = if @real_price > 5
        @real_price*0.2
      else
        @real_proce*0.1
      end

      cost_tax + type_tax
    end

end
