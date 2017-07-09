class AddAttachmentPhotoToTsukurepos < ActiveRecord::Migration
  def self.up
    change_table :tsukurepos do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :tsukurepos, :photo
  end
end
