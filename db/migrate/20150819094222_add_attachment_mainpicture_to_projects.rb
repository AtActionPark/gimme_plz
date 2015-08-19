class AddAttachmentMainpictureToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :mainpicture
    end
  end

  def self.down
    remove_attachment :projects, :mainpicture
  end
end
