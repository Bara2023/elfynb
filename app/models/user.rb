class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  has_many :bookings, dependent: :destroy
  has_many :elves, dependent: :destroy
  has_many :booked_elves, through: :bookings, source: :elf


  has_many :bookings_as_lodger, class_name: "Booking", foreign_key: "user_id"
  has_many :bookings_as_owner, through: :elves, source: :bookings
end
