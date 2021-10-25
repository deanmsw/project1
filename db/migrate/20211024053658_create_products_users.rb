class CreateProductsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :products_users, :id => false do |t|
      t.integer :product_id
      t.integer :user_id
    end
  end
end
