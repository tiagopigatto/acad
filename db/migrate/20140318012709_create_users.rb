class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|

      # Authlogic fields
      t.string   :email
      t.string   :crypted_password
      t.string   :password_salt
      t.string   :persistence_token
      t.integer  :login_count
      t.integer  :failed_login_count
      t.datetime :current_login_at
      t.datetime :last_login_at
      t.string   :current_login_ip
      t.string   :last_login_ip

      t.string   :name
      t.string   :registration
      t.string   :cpf
      t.string   :responsible_cpf
      t.string   :phone
      t.integer  :gender_id
      t.integer  :user_profile_id
      t.integer  :address_id
      t.boolean  :is_admin
      t.timestamps

    end
  end

  def self.down
    drop_table :users
  end
end
