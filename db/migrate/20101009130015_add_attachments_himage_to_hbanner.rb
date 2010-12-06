class AddAttachmentsHimageToHbanner < ActiveRecord::Migration
  def self.up

    add_column :hbanners, :himage_file_name, :string
    add_column :hbanners, :himage_content_type, :string
    add_column :hbanners, :himage_file_size, :integer
    add_column :hbanners, :himage_updated_at, :datetime

  end

  def self.down

    remove_column :hbanners, :himage_file_name
    remove_column :hbanners, :himage_content_type
    remove_column :hbanners, :himage_file_size
    remove_column :hbanners, :himage_updated_at

  end
end
