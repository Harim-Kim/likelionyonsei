class Users::SessionsController < Devise::SessionsController 
# before_action :configure_sign_in_params, only: [:create]
  layout :resolve_layout

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

  private

  def resolve_layout
    case action_name
    when "new"
      "sign_in"
    else
      "application"
    end
  end
end
