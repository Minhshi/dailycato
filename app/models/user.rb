class User < ApplicationRecord
  belongs_to :restaurant

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :email, format: { with: /\A.*@.*\.com\z/ }
  validates :password, presence: true
  validates :password, length: { minimum: 6 }
end
