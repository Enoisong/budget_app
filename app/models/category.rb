class Category < ApplicationRecord
  has_many :transactions
  belongs_to :user

  def total_amount
    transactions.sum(:amount)
  end

  validates :name, presence: true
  validates :icon, presence: true
end
