class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout 'devise', if: :devise_controller?

  private
    def after_sign_in_path_for(resource)
      sign_in_url = new_user_session_url
      if request.referer == sign_in_url
        super
      else
        stored_location_for(resource) || dashboard_path
      end
    end
end
