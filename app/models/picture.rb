class Picture < ActiveRecord::Base
	has_attached_file :image,
                    :styles => {
                      :thumb => "75x75>",
                      :small => "150x150>"
                    }


end
