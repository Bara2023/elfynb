class ElvesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  before_action :set_elf, only: [:show, :edit, :update, :destroy]

  def index
    @elves = Elf.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @elves.geocoded.map do |elf|
      {
        lat: elf.latitude,
        lng: elf.longitude
      }
    end
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

  def edit
  end

  def update
    @elf.update(elves_params)
    redirect_to elf_path(@elf)
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
