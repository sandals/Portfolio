class AddAttachmentImageToShots < ActiveRecord::Migration
  def self.up
    change_table :shots do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :shots, :image
  end
end
