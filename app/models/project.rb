class Project < ActiveRecord::Base
  has_one :project_profile
  accepts_nested_attributes_for :project_profile
end
