class OccupantsController < ApplicationController

	def create
    @project = Project.find(params[:project_id])
    @occupant = @project.occupants.create(occupant_params)
    redirect_to project_path(@project)
  end
 
def destroy
    @project = Project.find(params[:project_id])
    @occupant = @project.occupants.find(params[:id])
    @occupant.destroy
    redirect_to project_path(@project)
  end

def index
  @occupants = Occupant.all
end

def show
  @occupant = Occupant.find(params[:id])
end

def edit
  @occupant = Occupant.find(params[:id])
end
 
def update
  @occupant = Occupant.new(occupant_params)
 
  if @occupant.update(occupant_params)
    redirect_to @occupant
  else
    render 'edit'
  end
end

  private
    def occupant_params
      params.require(:occupant).permit(:name)
    end
end
