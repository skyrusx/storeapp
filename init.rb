require_relative "string"
require_relative "item_container"
require_relative "item"
require_relative "virtual_item"
require_relative "real_item"
require_relative "antique_item"
require_relative "cart"
require_relative "order"

@items = []
@items << AntiqueItem.new("car", price: 101, weight: 100)
@items << RealItem.new({:weight => 100, :price => 101, :name => 'kettle'})
@items << RealItem.new({:weight => 100, :price => 101, :name => 'dishwasher'})

cart = Cart.new("ruslan")
cart.add_item RealItem.new({:weight => 100, :price => 101, :name => 'car'})
cart.add_item RealItem.new({:weight => 100, :price => 150, :name => 'car'})
cart.add_item RealItem.new({:weight => 100, :price => 120, :name => 'kettle'})

p cart.all_cars
p cart.all_kettles
