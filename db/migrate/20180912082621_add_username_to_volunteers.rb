class AddUsernameToVolunteers < ActiveRecord::Migration
  def change
    add_column :volunteers, :username, :string
    add_index :volunteers, :username, unique: true
    add_column :volunteers, :is_signed_in, :boolean, default: true
  end
end


