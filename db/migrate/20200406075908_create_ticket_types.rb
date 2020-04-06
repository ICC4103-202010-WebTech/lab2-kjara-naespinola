class CreateTicketTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :ticket_types do |t|
      t.references :event, null: false, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
