class AddNameToTicketTypes < ActiveRecord::Migration[6.0]
  def change
    add_column :ticket_types, :name, :string
  end
end
