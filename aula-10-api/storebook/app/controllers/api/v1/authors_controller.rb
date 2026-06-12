class Api::V1::AuthorsController < ApplicationController
  before_action :set_author, only: %i[ show update destroy ]

  # GET /authors
  def index
    @authors = Author.page(params[:page]).per(2)
    data = AuthorSerializer.new(@authors).serializable_hash
    data[:meta] = {
      total_count: @authors.total_count,
      total_pages: @authors.total_pages,
      current_page: @authors.current_page
    }

    render json: data
  end

  # GET /authors/1
  def show
    render json: AuthorSerializer.new(@author)
  end

  # POST /authors
  def create
    @author = Author.new(author_params)

    if @author.save
      render json: AuthorSerializer.new(@author), status: :created, location: api_v1_author_url(@author)
    else
      render json: {errors: @author.errors.full_messages }, status: :unprocessable_content
    end
  end

  # PATCH/PUT /authors/1
  def update
    if @author.update(author_params)
      render json: AuthorSerializer.new(@author)  
    else
      render json: {errors: @author.errors.full_messages }, status: :unprocessable_content
    end
end

  # DELETE /authors/1
  def destroy
    @author.destroy!
  end

  private
 
  def set_author
    @author = Author.find(params[:id])
  end

  def author_params
    params.expect(author: [ :name ])
  end
end

