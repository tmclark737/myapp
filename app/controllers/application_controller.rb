class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  helper_method :inside_addition

	#start TMC add for learning/time
	def inside_addition
		result = 11+2215
		return result
	end
	#end TMC add for learning/time

  def hello() puts "hello world!" end





  def scheduleCalculation ()

Schedule.create ([{:name => '24x7 number 2', :w_day_begin => '2000-01-01 00:00:01', :w_day_stop => '2000-01-01 11:59:59', :w_end_begin => '2000-01-01 00:00:01', :w_end_stop => '2000-01-01 11:59:59'}])


  return Schedule.first
  end



end
