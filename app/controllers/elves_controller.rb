class ElvesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  before_action :set_elf, only: [:show, :destroy]

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
    @elf.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def set_elf
    @elf = Elf.find(params[:id])
  end

  private

  def elves_params
    params.require(:elf).permit(:name, :age, :category, :photo, :daily_price, :description)
  end
end
