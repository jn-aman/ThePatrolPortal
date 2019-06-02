class AddColumnsToVolunteer < ActiveRecord::Migration
  def change
    add_column :volunteers, :latitude, :float
    add_column :volunteers, :longitude, :float
  end
end
