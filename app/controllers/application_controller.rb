class ApplicationController < ActionController::Base
  # Prepend protect_from_forgery to the before_action chain manually
  protect_from_forgery prepend: true

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[username
                                                         email password
                                                         password_confirmation
                                                         remember_me])
    devise_parameter_sanitizer.permit(:sign_in, keys: %i[username
                                                         email password
                                                         password_confirmation])
  end

  private

  def after_sign_out_path_for(resource_or_scope)
    new_user_session_path
  end
end
