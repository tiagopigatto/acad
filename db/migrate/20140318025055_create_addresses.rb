class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string    :street
      t.string    :complement
      t.string    :neighborhood
      t.string    :zip_code
      t.string    :latitude
      t.string    :longitude
      t.integer   :city_id

      t.timestamps
    end
  end
end
