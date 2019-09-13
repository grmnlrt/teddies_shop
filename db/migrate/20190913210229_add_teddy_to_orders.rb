class AddTeddyToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :teddy, foreign_key: true
  end
end
