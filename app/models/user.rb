class User < ApplicationRecord

  has_many :tags

  validates :first_name, presence: true, on: :create
  validates :last_name, presence: true, on: :create
  validates :email, presence: true, on: :create


end
