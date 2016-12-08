class ProjectProfile < ActiveRecord::Base
  belongs_to :project
  bitmask :reasons, as: %i(sell license proxy security professional other)

  before_create :set_step!
  before_save :update_inventorship!

  WHITELISTED_ATTRS = %i(id number_of_inventors).freeze
  NESTED_ATTRS = [{ reasons: [] }].freeze

  private

  def set_step!
    self[:step] ||= 1
  end

  def update_inventorship!
    self.multi_creator = number_of_inventors.to_i > 1
    return
  end
end
