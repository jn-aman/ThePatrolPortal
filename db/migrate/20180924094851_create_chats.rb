class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.text :message
      t.string :username

      t.timestamps null: false
    end
  end
end
