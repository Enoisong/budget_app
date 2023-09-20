class TransactionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_category

  def index
    @transactions = @category.transactions.order(created_at: :desc)
  end

  def new
    @transaction = Transaction.new
    @categories = current_user.categories
  end

  def create
    @transaction = current_user.transactions.new(transaction_params)
    @transaction.category = @category

    if @transaction.save
      redirect_to category_transactions_path(@category), notice: 'Transaction created successfully!'
    else
      @categories = current_user.categories
      render :new
    end
  end

  private

  def set_category
    @category = current_user.categories.find(params[:category_id])
  end

  def transaction_params
    params.require(:transaction).permit(:name, :amount, category_ids: []) # Permit category_ids as an array
  end
end
