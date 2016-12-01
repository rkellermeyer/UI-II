class ProjectProfilesController < ApplicationController
  before_action :authenticate_member!
  before_action :set_project_profile, only: [:show, :edit, :update, :destroy]

  # GET /project_profiles
  # GET /project_profiles.json
  def index
    @project_profiles = ProjectProfile.all
  end

  # GET /project_profiles/1
  # GET /project_profiles/1.json
  def show
  end

  # GET /project_profiles/new
  def new
    @project_profile = ProjectProfile.new
  end

  # GET /project_profiles/1/edit
  def edit
  end

  # POST /project_profiles
  # POST /project_profiles.json
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

  def step_1

  end

  def step_2

  end

  def step_3

  end

  def step_4

  end

  def step_5

  end

  def step_6

  end

  def step_7

  end

  def finalize

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
    # Use callbacks to share common setup or constraints between actions.
    def set_project_profile
      @project_profile = ProjectProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_profile_params
      params.require(:project_profile).permit(:patentabilities, :disclosure_flag, :number_of_inventors, :multi_creator, :purpose, :improvement_1, :improvement_2, :gaps, :improve_gaps, :profile_steps_doc_id, :component_relationships_doc_id, :project_requirements_doc_id, :working_detail_doc_id, :how_to, :necessities_options, :statement_of_use, :bubba_story_doc_id, :active, :upid, :idyuh_id, :project_id, :member_id, :step)
    end
end
