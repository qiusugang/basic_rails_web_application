class NetcarsController < ApplicationController

  # GET /netcars
  # GET /netcars.json
  def index
    query_str = params[:search]
    if params[:search] && params[:search].strip != ''
      result = NetCar.search(query_str,0,20)
      json_text = '{"object":"list","total_cards":20,"has_more":false,"data":' + result.records.to_json(:only => [:id, :car_name, :city_name, :purchase_date, :mileage, :detail_link, :price]) + '}'
      render :plain => json_text
    else
      render :plain => "Not found", :status => 404 
    end
  end

  # GET /netcars/1
  # GET /netcars/1.json
  def show
  end

  def carlist
  end

end
