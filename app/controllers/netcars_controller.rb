class NetcarsController < ApplicationController

  # GET /netcars
  # GET /netcars.json
  def index
    query_str = params[:search]
    result = NetCar.search(query_str)
    render :plain => result.records.to_json(:only => [:id, :car_name, :city_name, :purchase_date, :mileage, :detail_link, :price])
  end

  # GET /netcars/1
  # GET /netcars/1.json
  def show
  end

end
