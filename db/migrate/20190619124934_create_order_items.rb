class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.string :name, limit: 50, null: false
      t.integer :quantity, null: false

      t.timestamps
    end
  end
end
