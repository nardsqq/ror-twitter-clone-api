class ApplicationController < ActionController::Base
  # Prepend protect_from_forgery to the before_action chain manually
  protect_from_forgery prepend: true
end