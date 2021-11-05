class ApplicationController < ActionController::Base
  
  # def index
  #   @user = User.all
  # end

  # def new
  #   @user = User.all
  # end
  
  # def create
  #   # @user = User.all
  # end

  # def destroy
  # end
  
  # before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :position, :occupation,])
  end

end
