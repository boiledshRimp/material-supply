class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?
  #Basic認証用に追加ここから
  before_action :basic_auth, if: :production?
  protect_from_forgery with: :exception
  #Basic認証用に追加ここまで
  
  #protected
  #def configure_permitted_parameters
    #devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  #end

  #Basic認証用に追加ここから
  private

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

  def production?
    Rails.env.production?
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end
  #Basic認証用に追加ここまで

end
