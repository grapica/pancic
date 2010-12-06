class AddAttachmentsVimageToVbanner < ActiveRecord::Migration
  def self.up

    add_column :vbanners, :vimage_file_name, :string
    add_column :vbanners, :vimage_content_type, :string
    add_column :vbanners, :vimage_file_size, :integer
    add_column :vbanners, :vimage_updated_at, :datetime

  end

  def self.down

    remove_column :vbanners, :vimage_file_name
    remove_column :vbanners, :vimage_content_type
    remove_column :vbanners, :vimage_file_size
    remove_column :vbanners, :vimage_updated_at

  end
end
