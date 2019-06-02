class AddConfirmableToDeviseV1 < ActiveRecord::Migration
 def up
    
    add_column :volunteers, :unconfirmed_email, :string # Only if using reconfirmable
    
    # User.reset_column_information # Need for some types of updates, but not for update_all.
    # To avoid a short time window between running the migration and updating all existing
    # users as confirmed, do the following
    execute("UPDATE volunteers SET confirmed_at = NOW()")
    # All existing user accounts should be able to log in after this.
  end
end
