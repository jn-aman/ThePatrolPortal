class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :name
      t.string :uuid

      t.timestamps null: false
    end
  end
end
