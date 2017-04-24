class ApplicationController < ActionController::API
  before_action :for_real!

  def current_user
    @current_user ||= User.find(decoded_token[:id]) if id_found?
  rescue
    nil
  end

  def user_signed_in?
    !!current_user
  end

  def for_real!
    render json: { errors: "Unauthorized" } , status: 401 unless user_signed_in?
  end

  private
    def token
      @token ||= if request.headers['Authorization'].present?
        request.headers['Authorization'].split.last
      end
    end

    def decoded_token
      @decoded_token ||= Auth.decode(token) if token
    end

    def id_found?
      token && decoded_token && decoded_token[:id]
    end
end
