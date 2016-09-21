class ProjectProfile < ActiveRecord::Base
  belongs_to :project
  bitmask :reasons,     as: [:sell, :license, :proxy, :security, :professional, :other]
end
