class Project < ActiveRecord::Base
  attr_accessible :project_hometown, :project_info, :project_length, :project_name, :project_schedinfo, :project_start, :project_type
  belongs_to :user
  has_many :requirements
  has_many :skills, through: :requirements

end
