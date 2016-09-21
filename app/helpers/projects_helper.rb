module ProjectsHelper
  def setup_project(project)
    project.project_profile ||= ProjectProfile.new
    project
  end
end
