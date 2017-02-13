class AddAttachmentDraftAToProjectProfiles < ActiveRecord::Migration
  def self.up
    change_table :project_profiles do |t|
      t.attachment :draft_a
      t.attachment :draft_b
      t.attachment :draft_c
      t.attachment :bubba_story
    end
  end

  def self.down
    remove_attachment :project_profiles, :draft_a
    remove_attachment :project_profiles, :draft_b
    remove_attachment :project_profiles, :draft_c
    remove_attachment :project_profiles, :bubba_story
  end
end
