class UpdateTable < ActiveRecord::Migration[6.0]
  def change
    add_column :ticket_type, :name, :string
  end
end
