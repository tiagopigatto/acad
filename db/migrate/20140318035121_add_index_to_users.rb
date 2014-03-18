class AddIndexToUsers < ActiveRecord::Migration
  def change
    add_index :users, :email, unique: true
    add_index :users, :cpf, unique: true
  end
end
