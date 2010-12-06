class AddPostTop < ActiveRecord::Migration
  def self.up
    add_column :posts, :top, :boolean, :null => false, :default => false
  end
  def self.down
    remove_column :posts, :top
  end
end