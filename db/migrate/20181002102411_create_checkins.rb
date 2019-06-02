class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.references :trip, index: true, foreign_key: true
      t.decimal :lat, precision: 10, scale: 5
      t.decimal :lng, precision: 10, scale: 5

      t.timestamps null: false
    end
  end
end
