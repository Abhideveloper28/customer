class ApplicationController < ActionController::API
  before_action :authenticate_user!

  def not_found
    render json: { error: 'Record not found' }, status: :not_found
  end
end
