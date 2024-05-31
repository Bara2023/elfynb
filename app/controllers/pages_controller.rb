class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home


  # def index
  #   @elves = Elf.where(user: current_user)
  #   @bookings = Booking.where(user: current_user)
  # end

  def pro
    @elves = Elf.where(user: current_user)
    @bookings = current_user.bookings_as_lodger
  end

  def part
    @bookings = current_user.bookings_as_owner
  end

end
