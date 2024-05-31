class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def pro
    @elves = Elf.where(user: current_user)
    @bookings = current_user.bookings_as_owner
  end

  def part
    @bookings = current_user.bookings_as_lodger
  end
end
