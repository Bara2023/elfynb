class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  has_many :bookings, dependent: :destroy
  has_many :elves, dependent: :destroy
  has_many :booked_elves, through: :bookings, source: :elf
end
