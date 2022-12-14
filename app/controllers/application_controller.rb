class ApplicationController < ActionController::Base
  before_action :authenticate_user! #この記述により、ログインしていないユーザーをログインページの画面に促すことができ
  before_action :configure_permitted_parameters, if: :devise_controller?
 
  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end