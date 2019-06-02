class AddImageToCrimes < ActiveRecord::Migration
  def change
    add_column :crimes, :image, :string
  end
end
