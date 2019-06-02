class RemoveEmailIdFromVolunteers < ActiveRecord::Migration
  def change
    remove_column :volunteers, :email_id, :string
  end
end
