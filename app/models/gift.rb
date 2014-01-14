class Gift < ActiveRecord::Base
  attr_accessible :gift_id, :gift_name, :gift_url, :project_id
end
