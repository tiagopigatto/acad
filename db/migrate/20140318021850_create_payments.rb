class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.date  :start_date
      t.date  :end_date
      t.date  :billing_date
      t.boolean   :status
      t.float    :value, :precision => 5, :scale => 2
      t.integer   :gym_id
      t.integer   :user_id
      t.integer   :payment_type_id

      t.timestamps
    end
  end
end
