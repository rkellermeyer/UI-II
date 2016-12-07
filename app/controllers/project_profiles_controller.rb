class ProjectProfilesController < ApplicationController
  before_action :authenticate_member!
  before_action :set_project_profile, only: [:show, :edit, :update, :destroy]

  def index
    @project_profiles = ProjectProfile.all
  end

  def show
  end

  def new
    @project_profile = ProjectProfile.new
  end

  def edit
  end

  def create
    @project_profile = ProjectProfile.new(project_profile_params)
    @project_profile.idyuh_id = SecureRandom.uuid

    respond_to do |format|
      if @project_profile.save
        format.html { redirect_to @project_profile, notice: 'Project profile was successfully created.' }
        format.json { render :show, status: :created, location: @project_profile }
      else
        format.html { render :new }
        format.json { render json: @project_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_profiles/1
  # PATCH/PUT /project_profiles/1.json
  def update
    respond_to do |format|
      if @project_profile.update(project_profile_params)
        format.html { redirect_to @project_profile, notice: 'Project profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_profile }
      else
        format.html { render :edit }
        format.json { render json: @project_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_profiles/1
  # DELETE /project_profiles/1.json
  def destroy
    @project_profile.destroy
    respond_to do |format|
      format.html { redirect_to project_profiles_url, notice: 'Project profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_project_profile
      @project_profile = ProjectProfile.find(params[:id])
    end

    def project_profile_params
      params.require(:project_profile).permit(:patentabilities, :disclosure_flag, :number_of_inventors, :multi_creator, :purpose, :improvement_1, :improvement_2, :gaps, :improve_gaps, :profile_steps_doc_id, :component_relationships_doc_id, :project_requirements_doc_id, :working_detail_doc_id, :how_to, :necessities_options, :statement_of_use, :bubba_story_doc_id, :active, :upid, :idyuh_id, :project_id, :member_id, :step)
    end
end
