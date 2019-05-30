class ApplicationController < ActionController::Base
  # Prepend protect_from_forgery to the before_action chain manually
  protect_from_forgery prepend: true

  # Call the configured parameters
  before_action :configure_permitted_parameters, if: :devise_controller?

  # Allow selected fields to be updated during mass assignment
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
end
