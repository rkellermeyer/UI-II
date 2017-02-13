class ProjectApplicationController < ApplicationController
  layout 'pdf'
  helper_method :project
  delegate :finalized?, to: :project

  def show
  end

  private

  def project
    @project ||= Project.find(params[:project_id])
  end
end
