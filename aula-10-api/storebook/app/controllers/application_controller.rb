class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  rescue_from ActionController::ParameterMissing, with: :param_missing


  private

  def record_not_found(error)
    render json: {errors: [error.message]}, status: :not_found
  end

  def param_missing(error)
    render json: {errors: [error.message]}, status: :bad_request
  end

end
