class ProjectsController < ApplicationController

before_filter :authenticate_user!

def new
	@project = Project.new
end


 def create
  @project = Project.new(project_params)
 
if  @project.save
  redirect_to @project
 else
 	render 'new'
 end
 end

def show
  @project = Project.find(params[:id])
end

def update
  @project = Project.new(project_params)
 
  if @project.update(project_params)
    redirect_to @project
  else
    render 'edit'
  end
end
 

def edit
  @project = Project.find(params[:id])
end

def index
	@projects = Project.all
end


def destroy
  @project = Project.find(params[:id])
  @project.destroy
 
  redirect_to projects_path
end

private
  def project_params
    params.require(:project).permit(:address, :area, :city, :owner)
  end

end
