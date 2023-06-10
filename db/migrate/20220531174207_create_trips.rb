class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.string :title
      t.string :description
      t.date :start_date
      t.date :end_date
    end
  end
end
