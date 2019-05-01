class MapController < ApplicationController
  def index
    @buildings = Building.all
    @directions = params[:directions]
    @error = params[:error_code]
    @hash = params[:markers]
    @debugvar = params[:debugvar]
  end

  # GET /map
  def search
    # Error check to make sure both fields were entered in
    if (!params[:startBuildingID] || !params[:endBuildingID])
      return redirect_to root_path(error_code: "One or more fields was not selected. Please try again")
    end

    # Initialize variables and GMaps
    require 'google_maps_service'
    gmaps = GoogleMapsService::Client.new(key: ENV['IPRESTRICTED_API_KEY'])
    @startEntrances = Entrance.where(building_id: params[:startBuildingID])
    @endEntrances = Entrance.where(building_id: params[:endBuildingID])
    @shortestDistance = -1
    @shortestStartIndex = 0
    @shortestEndIndex = 0

    # Check for handicap entrances

    # Find shortest distance between all entrances
    @startEntrances.each_with_index do |startPoint, startIndex|
      @endEntrances.each_with_index do |endPoint, endIndex|
        matrix = gmaps.distance_matrix({lat: startPoint.latitude, lng: startPoint.longitude}, {lat: endPoint.latitude, lng: endPoint.longitude}, mode: 'walking')
        @distance = matrix[:rows][0][:elements][0][:distance][:value]
        if (@distance < @shortestDistance || @shortestDistance == -1)
          @shortestDistance = @distance
          @shortestStartIndex = startIndex
          @shortestEndIndex = endIndex
        end
      end
    end

    # Set locations based on values found while cross checking all entrances
    @startLocation = @startEntrances[@shortestStartIndex]
    @endLocation = @endEntrances[@shortestEndIndex]
    
    # Calculate directions
    @routes = gmaps.directions(
      "#{@startLocation.latitude}, #{@startLocation.longitude}",
      "#{@endLocation.latitude}, #{@endLocation.longitude}",
      mode: 'walking',
      alternatives: false)

    # Build the marks for the map based on buildings
    @buildings = [Building.find(params[:startBuildingID]), Building.find(params[:endBuildingID])]
    @hash = Gmaps4rails.build_markers(@buildings) do |building, marker|
      marker.infowindow building.title
      marker.lat building.latitude
      marker.lng building.longitude
    end

    # Build directions array to pass back to index
    @directions = Array.new(@routes[0][:legs][0][:steps].count) { Array.new(2) }
    @routes[0][:legs][0][:steps].each_with_index do |routes, index|
        @directions[index][0] = routes[:html_instructions]
        @directions[index][1] = routes[:distance][:text]
    end

    # Redirect back to homepage with information gathered
    redirect_to root_path(directions: @directions, markers: @hash, debugvar: @shortestStartIndex)
  end

end
