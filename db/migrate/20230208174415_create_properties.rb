class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :address
      t.integer :user_id

      t.timestamps
    end
  end
end
