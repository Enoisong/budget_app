class Transaction < ApplicationRecord
    belongs_to :user
    belongs_to :category
    belongs_to :group, optional: true
  end
  