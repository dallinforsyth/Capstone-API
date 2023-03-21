class Pet < ApplicationRecord
  belongs_to :user

  has_many :food_schedules
  belongs_to :breed
end
