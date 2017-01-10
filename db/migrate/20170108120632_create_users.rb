class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.boolean :is_admin, default: false 
      t.timestamps null: false
    end
    add_index :users, :email, unique: true
    add_column :users, :remember_digest, :string
  end
end
