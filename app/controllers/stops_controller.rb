class StopsController < ApplicationController
  before_action :set_stop, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user! , only: [:index, :show]

  # GET /stops
  def index
    if params.key?(:lat) && params.key?(:lng)
      @stops = Stop.where(lat: params[:lat], lng: params[:lng])
    else
      @stops = Stop.all
    end

    render json: @stops
  end

  # GET /stops/1
  def show
    render json: @stop
  end

  # POST /stops
  def create
    @stop = Stop.new(stop_params)

    if @stop.save
      render json: @stop, status: :created, location: @stop
    else
      render json: @stop.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /stops/1
  def update
    if @stop.update(stop_params)
      render json: @stop
    else
      render json: @stop.errors, status: :unprocessable_entity
    end
  end

  # DELETE /stops/1
  def destroy
    @stop.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stop
      @stop = Stop.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def stop_params
      params.require(:stop).permit(:place, :start_date, :leave_date, :trip_id, :country, :lat, :lng, :value_for_money, :night_life, :culture, :hospitality)
    end
end
