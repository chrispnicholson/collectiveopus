class Gift < ActiveRecord::Base
  belongs_to :project
  attr_accessible :gift_id, :gift_name, :gift_url, :project_id
  
  validates :gift_name, :gift_url, :presence => true
  validates :gift_name, :uniqueness => true
  validates :gift_url, :allow_blank => true, 
	:format => {
		with: %r{\.|gif|jpg|png|\Z}i,
		
		:message => 'Must be a URL for an image file for GIF, JPG and PNG.'
	}
end
