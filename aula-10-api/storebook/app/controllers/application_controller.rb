class ApplicationController < ActionController::API
  include Pundit::Authorization
  rescue_from AASM::InvalidTransition, with: :invalid_transition
  before_action :authenticate_request
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  rescue_from ActionController::ParameterMissing, with: :param_missing
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def authenticate_request
    token = request.headers['Authorization']

    if token.present?
      begin
        decoded_token = JsonWebTokenService.decode(token.split(' ').last)
        @current_user = User.find_by(id: decoded_token['user_id'])

        unless @current_user
          render json: { error: 'Not Authorized' }, status: :unauthorized
        end
      rescue => _e
        render json: { error: 'Invalid Token' }, status: :unauthorized
      end
    else
      render json: { error: 'Missing Authorization Header' }, status: :unauthorized
    end
  end

  def current_user
    @current_user
  end

  def user_not_authorized
    render json: {errors: ['You are not allowed to perform this action TEU MERDA']}, status: :forbidden    
  end

  def record_not_found(error)
    render json: {errors: [error.message]}, status: :not_found
  end

  def param_missing(error)
    render json: {errors: [error.message]}, status: :bad_request
  end

  def invalid_transition(error)
    render json: {errors: [error.message]}, status: :unprocessable_content
  end

end
