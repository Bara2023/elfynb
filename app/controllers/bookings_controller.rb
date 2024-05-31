class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @elf = Elf.find(params[:elf_id])
    @booking = Booking.new

  end

  def create
    @elf = Elf.find(params[:elf_id])
    @booking = Booking.new(booking_params)
    @booking.elf = @elf
    @booking.user = current_user
    if @booking.save
      redirect_to part_path
    else
      render "elves/show", status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :total_price)
  end
end
