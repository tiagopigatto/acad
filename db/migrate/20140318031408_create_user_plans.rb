class CreateUserPlans < ActiveRecord::Migration
  def change
    create_table :user_plans do |t|
      t.integer   :user_id
      t.integer   :plan_id
      t.integer   :billing_day
      t.date      :purchased_at
      t.boolean   :status

      t.timestamps
    end
  end
end
