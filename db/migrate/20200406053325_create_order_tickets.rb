class CreateOrderTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :order_tickets do |t|
      t.references :ticket_type, null: false, foreign_key: true
      t.integer :quantity
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
