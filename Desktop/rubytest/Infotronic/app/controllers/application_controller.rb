class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    
    include ApplicationHelper
    include Response
	  include ExceptionHandler
    before_action :configure_permitted_parameters, if: :devise_controller?

    def moon
        cookies[:moon] = {
          value: 'dark mode on'
        }
        if account_signed_in? 
          redirect_to root_path
        else
          redirect_to root_path
        end
      end

      def sun
        cookies.delete(:moon)
        if account_signed_in? 
          redirect_to root_path
        else
          redirect_to root_path
        end
      end

    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:nombre,:apellidos,:telefono,:cpostal,:direccion,:dni,:pais])
        devise_parameter_sanitizer.permit(:account_update, keys: [:nombre,:apellidos,:telefono,:cpostal,:direccion,:dni,:pais])
    end

    
    

end
