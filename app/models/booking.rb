class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :elf

  
  validates :start_date, presence: true
  validates :end_date, presence: true
  before_save :compute_total_price

  def compute_total_price
    self.total_price = elf.daily_price * duration_in_days
  end

  def duration_in_days
    (end_date - start_date).to_i
  end
end
