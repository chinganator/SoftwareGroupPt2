class AddAttachmentBookpictureToBooks < ActiveRecord::Migration
  def self.up
    change_table :books do |t|
      t.attachment :bookpicture
    end
  end

  def self.down
    remove_attachment :books, :bookpicture
  end
end
