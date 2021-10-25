class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :email
      t.string :tel
      t.text :username
      t.text :first_name
      t.text :surname
      t.date :dob
      t.text :image
      t.string :password_digest
      t.boolean :admin, :default => false

      t.timestamps
    end
  end
end
