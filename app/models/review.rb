class Review < ApplicationRecord
  belongs_to :elf
  belongs_to :user

  validates :comment, presence: true, length: { minimum: 4, maximum: 50,
    too_long: "%{count} characters is the maximum allowed"  }
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: 0..5 }
end
