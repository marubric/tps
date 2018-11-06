# frozen_string_literal: true

class Users::ConfirmationsController < Devise::ConfirmationsController
  layout "new_application"

  # GET /resource/confirmation/new
  def new
    # Allow displaying the user email in the message
    self.resource = resource_class.new(email: user_email_param)
  end

  # POST /resource/confirmation
  # def create
  #   super
  # end

  # GET /resource/confirmation?confirmation_token=abcdef
  # def show
  #   super
  # end

  # protected

  def user_email_param
    params.permit(user: :email).dig(:user, :email)
  end

  # The path used after resending confirmation instructions.
  # def after_resending_confirmation_instructions_path_for(resource_name)
  #   super(resource_name)
  # end

  # The path used after confirmation.
  # def after_confirmation_path_for(resource_name, resource)
  #   super(resource_name, resource)
  # end
end
