class Api::V1::BooksController < ApplicationController
  before_action :set_book, only: %i[ show update destroy ]

  # GET /books
  def index
    @books = Book.includes(:author).page(params[:page]).per(2)
    @books = @books.where(author_id: params[:author_id]) if params[:author_id].present?
    data = BookSerializer.new(@books).serializable_hash
    data[:meta] = {
      total_count: @books.total_count,
      total_pages: @books.total_pages,
      current_page: @books.current_page
      }
    render json: data
  end

  # GET /books/1
  def show
    render json: BookSerializer.new(@book)
  end

  # POST /books

  def create
    @book = Book.new(book_params)
    @book.author_id = params[:author_id]

    if @book.save
      render json: BookSerializer.new(@book), status: :created, location: api_v1_book_url(@book)
    else
      render json: {errors: @book.errors.full_messages }, status: :unprocessable_content
    end
  end

  # PATCH/PUT /books/1
  def update
    if @book.update(book_params)
      render json: BookSerializer.new(@book)
    else
      render json: {errors: @book.errors.full_messages }, status: :unprocessable_content
    end
  end

  # DELETE /books/1
  def destroy
    @book.destroy!
  end

  private

  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.expect(book: [ :title, :body ])
  end
end
