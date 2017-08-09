class CreatePubs < ActiveRecord::Migration[5.0]
  def change
    create_table :pubs do |t|
      t.string :name
      t.string :address
      t.text :description
      t.integer :happy_hour_price

      t.timestamps
    end
  end
end
