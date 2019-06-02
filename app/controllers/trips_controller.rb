class TripsController < ApplicationController
  def index
  end

   def create
        @trip = Trip.new(trip_params)
        @trip.checkins.build(lat: params[:lat], lng: params[:lng])
        render json: @trip.as_json if @trip.save
      end

def cost
 return (trip * cost);
end
      # function for showing a trip
      def show
        # If cost()>10:
        @trip = Trip.find_by(uuid: params[:id])
      # else 
        # @trip = Trip.find_by(uuid: params[:id1])

      end

      private
        def trip_params
          params.permit(:name)
        end
end
