class User < ApplicationRecord
  has_many :messages
  has_many :conversations, through: :messages
  validates :name, presence: true
  validates :email, presence: true
end
