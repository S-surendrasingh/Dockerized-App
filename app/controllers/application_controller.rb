# frozen_string_literal: true

# ApplicationController serves as the base controller for all other controllers
# in the application. It contains common behavior such as CSRF protection
# and session handling. All other controllers in the app inherit from this class.
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end
