class PostImage < ActiveRecord::Base

	has_attached_file :image,
	:default_url => '/images/no-photo.gif'
	belongs_to :post


end
