class User < ApplicationRecord
  has_many :schedulers
  has_many :tasks, through: :schedulers
end
