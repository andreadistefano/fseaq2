class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def redactor_authenticate_user!
    authenticate_socio! # devise before_filter
  end

  def redactor_current_user
    current_socio # devise user helper
  end
end
