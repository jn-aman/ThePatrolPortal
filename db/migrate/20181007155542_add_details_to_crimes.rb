class AddDetailsToCrimes < ActiveRecord::Migration
  def change
    add_column :crimes, :Age, :string
    add_column :crimes, :Gender, :string
  end
end
