class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

    protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |user_params| user_params.permit(:email,
                                                               :password,
                                                               :current_password,
                                                               :password_confirmation,
                                                               :name,
                                                               :lastname,
                                                               :age)}
   devise_parameter_sanitizer.permit(:account_update) { |user_params| user_params.permit(:email,
                                                                      :password,
                                                                      :current_password,
                                                                      :password_confirmation,
                                                                      :name,
                                                                      :lastname,
                                                                      :age)}
    end

end