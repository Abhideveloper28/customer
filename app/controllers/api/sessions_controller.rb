class Api::SessionsController < Devise::RegistrationsController
  def new
    render json: { error: 'Not authorized' }, status: :unauthorized
  end
end
