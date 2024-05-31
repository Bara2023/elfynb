class ReviewsController < ApplicationController
  before_action :set_elf, only: [:create]

  def create
    @review = @elf.reviews.build(review_params)
    @review.user = current_user
    if @review.save
      redirect_to elf_path(@elf)
    else
      @booking = Booking.new
      @reviews = @elf.reviews.where.not(id: nil)
      render "elves/show", status: :unprocessable_entity
    end
  end

  private

  def set_elf
    @elf = Elf.find(params[:elf_id])
  end

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
