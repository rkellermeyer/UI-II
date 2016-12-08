class ProjectsController < ApplicationController
  before_action :authenticate_member!
  before_action :update_step!, only: :new_step
  helper_method :render_step, :project, :step_partial

  def index
  end

  def show
  end

  def new
  end

  def edit
    render :edit
  end

  def create
    respond_to do |format|
      if project.update(project_params)
        format.html { redirect_to project_new_step_path(project, project.step),
                      notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: project }
      else
        format.html { render :new }
        format.json { render json: project.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if project.update(project_params)
        format.html { redirect_to project_new_step_path(project, next_step), notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: project }
      else
        format.html { render :edit }
        format.json { render json: project.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def new_step
    render :edit
  end

  private

  def project
    @project ||= if (params[:project_id] || params[:id]).present?
                   Project.find(params[:project_id] || params[:id])
                 else
                   Project.new(new_params)
                 end
  end
  # delegate :project_profile, to: :project

  def projects
    @projects ||= Project.all
  end

  def new_params
    params.merge(project_profile_attributes: { member_id: current_member.id }).permit(
      *Project::WHITELISTED_ATTRS,
      project_profile_attributes: [:member_id]
    )
  end

  def project_params
    params.require(:project).permit(
      *Project::WHITELISTED_ATTRS,
      project_profile_attributes: ProjectProfile::WHITELISTED_ATTRS + ProjectProfile::NESTED_ATTRS
    )
  end

  def step_partial
    "projects/steps/step_#{params[:step]}"
  end

  def next_step
    project.step.next
  end

  def update_step!
    project.profile.update(step: params[:step])
  end
end
