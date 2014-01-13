class Collective < ActiveRecord::Base
  belongs_to :user
  has_many :projects
  has_many :users
  
  before_destroy :ensure_not_referenced_by_any_project
  attr_accessible :collective_id, :collective_name, :user_id

  private
  def ensure_not_referenced_by_any_project
  	if projects.empty?
  		return true
  	else
  		errors.add(:base, 'Projects still ongoing')
  		return false
  	end
  end

end
