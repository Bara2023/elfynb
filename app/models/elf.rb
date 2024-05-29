class Elf < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
  validates :age, presence: true, numericality: { only_integer: true }
  validates :category, presence: true
  validates :daily_price, presence: true, numericality: { only_integer: true }
  validates :description, presence: true
  # validates :photo, presence: true
end
