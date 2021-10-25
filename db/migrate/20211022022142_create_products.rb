class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.text :name
      t.text :description
      t.text :image
      t.float :price
      t.text :location
      t.text :condition
      t.text :shipping
      t.integer :category_id
      t.integer :user_id

      t.timestamps
    end
  end
end
