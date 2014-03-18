class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string    :name
      t.float    :value, :precision => 5, :scale => 2
      t.text      :description
      t.integer   :gym_id
      t.timestamps
    end
  end
end
