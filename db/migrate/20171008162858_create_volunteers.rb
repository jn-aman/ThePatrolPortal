class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string :name
      t.string :police_station
      t.string :nearest_police_chowki
      t.string :mobile_number
      t.string :category
      t.string :email_id

      t.timestamps null: false
    end
  end
end
