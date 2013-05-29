class Skill < ActiveRecord::Base
  attr_accessible :name, :id
  has_many :requirements
  has_many :projects, through: :requirements
end
