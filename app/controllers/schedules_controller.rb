class SchedulesController < ApplicationController

def index
	@schedules = Schedule.all
  #@projects = current_user.projects
end



end
