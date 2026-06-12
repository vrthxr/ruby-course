class Api::V1::LoansController < ApplicationController
  before_action :set_loan, only: :return
  
  def index
    @loans = Loan.includes(:book).page(params[:page]).per(2)
    data = LoanSerializer.new(@loans).serializable_hash
    data[:meta] = {
      total_count: @loans.total_count,
      total_pages: @loans.total_pages,
      current_page: @loans.current_page
    }
    render json: data
  end

  def create
    @loan = Loan.new(loan_params)
    @loan.user = current_user

    if @loan.save
      render json: LoanSerializer.new(@loan), status: :created
    else
      render json: {errors: @loan.errors.full_messages }, status: :unprocessable_content
    end
  end

  def return
    @loan.return_book!
    render json: LoanSerializer.new(@loan)
  end

  private

    def loan_params
      params.expect(loan: [ :book_id, :due_on ])
    end

    def set_loan
      @loan = Loan.find(params[:id])
    end

end