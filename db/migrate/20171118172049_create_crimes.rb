class CreateCrimes < ActiveRecord::Migration
  def change
    create_table :crimes do |t|
      t.string :Type
      t.string :Locality
      t.text :Description

      t.timestamps null: false
    end
  end
end
