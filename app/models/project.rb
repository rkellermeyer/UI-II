class Project < ActiveRecord::Base
  has_one :project_profile
  accepts_nested_attributes_for :project_profile
  delegate :step, to: :profile
  alias :profile project_profile

  WHITELISTED_ATTRS = %i(project_type_id title category_id problem solution
                         improvement_detail)
end
