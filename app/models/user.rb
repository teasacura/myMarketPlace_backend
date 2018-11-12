class User < ApplicationRecord
  has_secure_password
  has_many :user_products
  has_many :products, through: :user_products, source: :product
  has_many :favorites
  has_many :favorite_products, through: :favorites, source: :product
  # has_many :user_products_ownership, class_name: "UserProduct", foreign_key: "owner_id"
  # has_many :products, through: :user_products_ownership
  # has_many :user_products_associations, class_name: "UserProduct", foreign_key: "interested_id"
  # has_many :interests, through: :user_products_associations
  validates :username, uniqueness: { case_sensitive: false }
  validates :email, uniqueness: { case_sensitive: false }
end
