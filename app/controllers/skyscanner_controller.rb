class SkyscannerController < ApplicationController
  skip_before_action :authenticate_user!

  require 'date'
  def flights
    base_url = 'http://partners.api.skyscanner.net/apiservices/browsequotes/v1.0/UK/GBP/en-GB/'
    
    flights = HTTParty.get("#{base_url}#{params[:origin]}-latlong/#{params[:destination]}-latlong/#{params[:date]}", {
      query: {
        apiKey: ENV['SKYSCANNER_API_KEY'],
      },
      headers: {'Accept' => 'application/json'}
    })
    render json: flights, status: :ok
  end
end
