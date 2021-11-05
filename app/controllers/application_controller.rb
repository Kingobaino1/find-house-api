class ApplicationController < ActionController::API
  def jwt_key
    ENV['SESSION_SECRET']
  end
end
