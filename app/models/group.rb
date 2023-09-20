class Group < ApplicationRecord
    has_many :transactions
    has_and_belongs_to_many :users
  end
  