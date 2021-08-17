class ApplicationController < ActionController::API
  def encode_token(payload)
    JWT.encode(payload, 'SESSION_SECRET')
  end
end
