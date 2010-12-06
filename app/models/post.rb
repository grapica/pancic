class Post < ActiveRecord::Base
	belongs_to :category, :counter_cache => true
	has_many :post_images, :dependent => :delete_all

end
