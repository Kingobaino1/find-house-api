class ApplicationController < ActionController::API
  def encode_token(payload)
    JWT.encode(payload, 'SESSION_SECRET')
  end
  
  def auth_header
    request.headers['Authorization']
  end

  def decoded_token
    if auth_header
      token = auth_header.split(' ')[1]
      begin
        JWT.decode(token, 'SESSION_SECRET', true, algorithm: 'HS256')
      rescue JWT::DecodeError
        []
      end
    end
  end

  def user_id
    decoded_token[0]['user_id']
  end

  def current_user
    @user ||= User.find_by(id: user_id)
  end
end
