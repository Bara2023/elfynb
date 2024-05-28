class ElvesController < ApplicationController
  def index
    @elves = Elf.all
  end

  def show
  end

  def new
    @elf = Elf.new
  end

  def create
    @elf = Elf.new(elves_params)
    @elf.user = current_user
    if @elf.save
      redirect_to elf_path(@elf)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
  end

  private

  def elves_params
    params.require(:elf).permit(:name, :age, :category, :photo, :daily_price, :description)
  end
end
