class ZonesController < ApplicationController

	def create
    @occupant = Occupant.find(params[:occupant_id])
    @zone = @occupant.zones.create(zone_params)
    redirect_to occupant_path(@occupant)
  end

private
    def zone_params
      params.require(:zone).permit(:description)
    end

end
