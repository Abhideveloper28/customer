class Api::RegistrationsController < Devise::RegistrationsController
  def create
    build_resource(sign_up_params)
    resource.save

    if resource.persisted?
      render json: { message: 'Successfully created user'}, status: 200
    else
      render json: resource.errors, status: 422
    end
  end

  private

  def sign_up_params
    params.require(resource_name).permit(:email, :password, :password_confirmation, :user_name, :date_of_birth, :gender, :phone_number, role_attributes: [:role_name])
  end
end
