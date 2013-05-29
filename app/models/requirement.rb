class Requirement < ActiveRecord::Base
  attr_accessible :blurb, :project_id, :skill_id
  belongs_to :project
  belongs_to :skill
end
