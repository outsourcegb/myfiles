class ApplicationController < ActionController::Base
  before_action :config_devise_params, if: :devise_controller?

  protected

  def config_devise_params
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[
                                        full_name
                                        email
                                        password
                                        password_confirmation
                                      ])
  end
end
