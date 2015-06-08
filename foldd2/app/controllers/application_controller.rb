class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

protected

def configure_permitted_parameters
  devise_parameter_sanitizer.for(:sign_up) << :first
  devise_parameter_sanitizer.for(:sign_up) << :last
  devise_parameter_sanitizer.for(:sign_up) << :email
  devise_parameter_sanitizer.for(:sign_up) << :phone
  devise_parameter_sanitizer.for(:sign_up) << :dorm
  devise_parameter_sanitizer.for(:sign_up) << :address1
  devise_parameter_sanitizer.for(:sign_up) << :address2
  devise_parameter_sanitizer.for(:sign_up) << :zip
  devise_parameter_sanitizer.for(:sign_up) << :pud
  devise_parameter_sanitizer.for(:sign_up) << :put
  devise_parameter_sanitizer.for(:sign_up) << :dod
  devise_parameter_sanitizer.for(:sign_up) << :dot

  devise_parameter_sanitizer.for(:account_update) << :first
  devise_parameter_sanitizer.for(:account_update) << :last
  devise_parameter_sanitizer.for(:account_update) << :email
  devise_parameter_sanitizer.for(:account_update) << :phone
  devise_parameter_sanitizer.for(:account_update) << :dorm
  devise_parameter_sanitizer.for(:account_update) << :address1
  devise_parameter_sanitizer.for(:account_update) << :address2
  devise_parameter_sanitizer.for(:account_update) << :zip
  devise_parameter_sanitizer.for(:account_update) << :pud
  devise_parameter_sanitizer.for(:account_update) << :put
  devise_parameter_sanitizer.for(:account_update) << :dod
  devise_parameter_sanitizer.for(:account_update) << :dot
end

end
