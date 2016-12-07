class ProjectProfilesController < ApplicationController
  before_action :authenticate_member!
  helper_method :project_profile

  def index
    @project_profiles = ProjectProfile.all
  end

  def show
  end

  def edit
  end

  def create
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

  def project_profile
    @project_profile ||= if params[:id].present?
                           ProjectProfile.find(params[:id])
                         else
                           ProjectProfile.new(project_profile_params)
                         end
  end

  def project_profile_params
    params.require(:project_profile).permit(*ProjectProfile::WHITELISTED_ATTRS)
  end
end
