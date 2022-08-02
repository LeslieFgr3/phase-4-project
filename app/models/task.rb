class Task < ApplicationRecord
  has_many :schedulers
  has_many :users, through: :schedulers
  belongs_to :emoji
end
