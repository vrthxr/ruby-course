class Api::V1::AuthorsController < ApplicationController
  before_action :authenticate_request
  before_action :set_author, only: %i[ show update destroy ]

  # GET /authors
  def index
    @authors = Author.all

    render json: @authors
  end

  # GET /authors/1
  def show
    render json: @author
  end

  # POST /authors
  def create
    @author = Author.new(author_params)

    if @author.save
      render json: @author, status: :created, location: api_v1_author_url(@author)
    else
      render json: @author.errors, status: :unprocessable_content
    end
  end

  # PATCH/PUT /authors/1
  def update
    if @author.update(author_params)
      render json: @author
    else
      render json: @author.errors, status: :unprocessable_content
    end
  end

  # DELETE /authors/1
  def destroy
    @author.destroy!
  end

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

  def set_author
    @author = Author.find_by(id: params[:id])
    unless @author
      render json: { error: 'Author not found' }, status: :not_found
    end
  end

  def author_params
    params.expect(author: [ :name ])
  end
end
