class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.string :name
      t.references :event, null: false, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
