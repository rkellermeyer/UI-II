class ProjectProfile < ActiveRecord::Base
  belongs_to :project
  bitmask :reasons, as: %i(sell license proxy security professional other)

  before_create :set_step!
  before_save :update_inventorship!
  before_save :assign_idyuh_id!

  has_attached_file :draft_a
  has_attached_file :draft_b
  has_attached_file :draft_c

  has_attached_file :bubba_story


  WHITELISTED_ATTRS = %i(id number_of_inventors components dependencies how_to statement_of_use other_uses draft_a draft_b draft_c bubba_story).freeze
  NESTED_ATTRS = [{ reasons: [] }].freeze

  private

  def set_step!
    self[:step] ||= 1
  end

  def update_inventorship!
    self.multi_creator = number_of_inventors.to_i > 1
    return
  end

  def assign_idyuh_id!
    self.idyuh_id = SecureRandom.uuid
  end
end
