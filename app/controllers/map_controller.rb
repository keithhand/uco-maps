class MapController < ApplicationController
  def index
    @buildings = Building.all
    @directions = params[:directions]
    @error = params[:error_code]
    @hash = params[:markers]
  end

  # GET /map
  def search
    require 'google_maps_service'

    if (!params[:startPos] || !params[:endPos])
      return redirect_to root_path(error_code: "One or more fields was not selected. Please try again")
    end

    @startBuilding = Building.find(params[:startPos])
    @endBuilding = Building.find(params[:endPos])
    
    gmaps = GoogleMapsService::Client.new(key: ENV['API_KEY'])
    @routes = gmaps.directions(
      "#{@startBuilding.latitude}, #{@startBuilding.longitude}",
      "#{@endBuilding.latitude}, #{@endBuilding.longitude}",
      mode: 'walking',
      alternatives: false)

    @buildings = [@startBuilding, @endBuilding]
    @hash = Gmaps4rails.build_markers(@buildings) do |building, marker|
      marker.infowindow building.title
      marker.lat building.latitude
      marker.lng building.longitude
    end

    @directions = Array.new(@routes[0][:legs][0][:steps].count) { Array.new(2) }

    @routes[0][:legs][0][:steps].each_with_index do |routes, index|
        @directions[index][0] = routes[:html_instructions]
        @directions[index][1] = routes[:distance][:text]
    end

    redirect_to root_path(directions: @directions, markers: @hash)
  end

end
