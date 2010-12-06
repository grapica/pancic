class AddPostOwnerPhonesPlaceAndEmail < ActiveRecord::Migration
  def self.up
	add_column :posts, :owner, :string, :null => true
	add_column :posts, :phone1, :string, :null => true
	add_column :posts, :phone2, :string, :null => true
	add_column :posts, :place, :string, :null => true
	add_column :posts, :email, :string, :null => true
  end

  def self.down
	remove_column :posts, :owner
	remove_column :posts, :phone1
	remove_column :posts, :phone2
	remove_column :posts, :place
	remove_column :posts, :email
  end
end
