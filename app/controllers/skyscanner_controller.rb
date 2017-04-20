class SkyscannerController < ApplicationController
  skip_before_action :authenticate_user!

  require 'date'
  def flights
    base_url = 'http://partners.api.skyscanner.net/apiservices/browsequotes/v1.0/UK/GBP/en-GB/'

    # flights=HTTParty.get('http://partners.api.skyscanner.net/apiservices/browsequotes/v1.0/UK/GBP/en-GB/51.507351,-0.127758-latlong/-16.489689,-68.119294-latlong/2017-05-19/?apiKey=om391596862397794535241651597138',{

    flights = HTTParty.get("#{base_url}#{params[:origin]}-latlong/#{params[:destination]}-latlong/#{params[:date]}", {
      query: {
        apiKey: ENV['SKYSCANNER_API_KEY'],
      },
      headers: {'Accept' => 'application/json'}
    })
    render json: flights, status: :ok
  end
end
