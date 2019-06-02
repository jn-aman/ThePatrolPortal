class AddDetail1sToCrimes < ActiveRecord::Migration
  def change
    add_column :crimes, :lat, :decimal, precision: 10, scale: 5
    add_column :crimes, :lng, :decimal, precision: 10, scale: 5
  end
end
