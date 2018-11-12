class Product < ApplicationRecord
  has_many :user_products
  has_many :owners, through: :user_products, source: :user
  has_many :favorites
  has_many :following_users, through: :favorites, source: :user
end
