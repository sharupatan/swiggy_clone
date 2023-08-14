class ApplicationController < ActionController::Base
    before_action :authenticate_user!
	load_and_authorize_resource
    include Taggable

    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:user_role, :email, :password] )
        devise_parameter_sanitizer.permit(:account_update, keys: [:user_role, :email, :password, :current_password] )
    end
end