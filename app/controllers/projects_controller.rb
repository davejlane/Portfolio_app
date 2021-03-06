class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      flash[:notice] = "Project has been created."
      redirect_to @project
    else
      flash.now[:error] =  "Project could not be saved."
      render :new
    end
  end

  def edit
  end

  def back
    redirect_to projects_path
  end

  def update
    if @project.update_attributes(project_params)
      redirect_to @project, notice: "Project was Successfully updated"
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @project.delete
    redirect_to projects_path, notice: 'Project was successfully destroyed.'
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :technologies_used)
  end
end
