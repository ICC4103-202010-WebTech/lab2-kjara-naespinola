class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.date :star_date
      t.references :event_venue, null: false, foreign_key: true

      t.timestamps
    end
  end
end
