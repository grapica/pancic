class AddCategoryPostsCount < ActiveRecord::Migration
  def self.up
	add_column :categories, :posts_count, :integer, :null => false, :default => 0
  end

  def self.down
	remove_column :categories, :posts_count
  end
end
