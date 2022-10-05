class User < ApplicationRecord
  has_many :recipes

  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 25 }
end
