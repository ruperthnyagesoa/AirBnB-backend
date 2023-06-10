class CreateStops < ActiveRecord::Migration[6.1]
  def change
    create_table :stops do |t|
      t.date :arrival
      t.date :departure
      t.integer :trip_id
      t.integer :destination_id
    end
  end
end
