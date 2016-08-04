class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|

      
      t.string :productpic
      t.string :barcode
      t.integer :couponnumber, :limit => 16
      t.string :description
      t.string :productname
      t.string :category
      t.string :company
      t.string :time
      t.integer :price
      

      t.timestamps null: false
    end
  end
end
