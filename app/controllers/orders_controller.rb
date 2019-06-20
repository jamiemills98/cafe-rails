class OrdersController < ApplicationController
    def index
        @order = OrderItem.all
        @order_total = total
    end
    def total
        sum = 0
        menu = MenuItem.all
        @order.each do |order_item|
          sum += order_item.quantity * menu.where(name: order_item.name).first.price
        end
        return sum
    end
end
