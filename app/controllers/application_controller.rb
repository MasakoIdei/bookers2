class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
    # before_action :authenticate_user!

    def after_sign_in_path_for(resource)
     user_path(@user.id) # ログイン後
    end

    def after_sign_out_path_for(resource)
      new_user_session_path # ログアウト後
    end




  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
    devise_parameter_sanitizer.permit(:sign_up,keys:[:email])
  end


end
