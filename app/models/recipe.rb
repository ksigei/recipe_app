class Recipe < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, length: { minimum: 5, maximum: 100 }
  validates :prep_time, presence: true
  validates :cook_time, presence: true
  validates :description, presence: true, length: { minimum: 5, maximum: 500 }
end
