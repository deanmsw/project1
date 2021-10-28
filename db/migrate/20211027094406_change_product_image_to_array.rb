class ChangeProductImageToArray < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :image
    add_column :products, :images, :text, :array => true, :default => []
  end
end
