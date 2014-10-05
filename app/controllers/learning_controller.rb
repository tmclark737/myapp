class LearningController < ApplicationController


def time
	@projects = Project.all
  #@projects = current_user.projects
  	@occupants = Occupant.all

end


end
