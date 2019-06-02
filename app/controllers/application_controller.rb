class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
      before_action :configure_permitted_parameters, if: :devise_controller?
      # before_action :authenticate_volunteer!

      

def authenticate_volunteer_api

  	authenticate_with_http_token do |token, options|
  	
  		@current_user = Volunteer.find_by_access_token(token)

  		if (@current_user.blank? || !@current_user.access_token_is_valid)
  			return false
  		else

  			return true
  		end
  	end

  	def authenticate_volunteer_custom
  		if volunteer_signed_in?
  			@current_user = current_user
  			return true
  		else
  			mobile_user = authenticate_user_api
  			if !mobile_user
  				return render json: {
  				'message': 'unauthorized',
	  			},
	  			status: 401
  			end
  			return true

  		end

  	end

  end
protected

      def configure_permitted_parameters
        added_attrs = [:username,:name, :police_station, :nearest_police_chowki, :mobile_number, :category, :email, :password, :password_confirmation,:latitude,:longitude]
        devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
        devise_parameter_sanitizer.permit :account_update, keys: added_attrs
      end


end
