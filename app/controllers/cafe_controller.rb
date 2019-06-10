class CafeController < ApplicationController
    class MenuItem
        attr_reader :name, :price
        def initialize(name, price)
            @name = name
            @price = price
        end
    end
    def index
        @menu = [
            MenuItem.new("Latte",4.00),
            MenuItem.new("Tea",3.00),
            MenuItem.new("Scone",5.00)
        ]
    end
end
