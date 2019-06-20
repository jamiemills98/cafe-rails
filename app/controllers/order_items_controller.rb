class OrderItemsController < ApplicationController
    def new
        @order_item = OrderItem.new
        @order_item.name = params[:item_name]
    end

    def create
        @order_item = OrderItem.new
        @order_item.name = params[:order_item][:name]
        @order_item.quantity = params[:order_item][:quantity]
       
        if @order_item.save
          redirect_to order_items_path
        else
          render "new"
        end
    end

    def edit
        @order_item = OrderItem.find(params[:id])
    end
    
    def update
        @order_item = OrderItem.find(params[:id])
        @order_item.quantity = params[:order_item][:quantity]
        if @order_item.save
            redirect_to order_items_path
        else
            render "edit"
        end
    end

    def destroy
        OrderItem.destroy(params[:id])
        redirect_to order_items_path
    end

end
