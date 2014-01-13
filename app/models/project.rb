class Project < ActiveRecord::Base
  belongs_to :collective
  attr_accessible :collective_id, :project_id, :project_name
end
