class AddAttachmentAvatarToCrimes < ActiveRecord::Migration
  def self.up
    change_table :crimes do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :crimes, :avatar
  end
end
