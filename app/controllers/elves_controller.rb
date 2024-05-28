class ElvesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  before_action :set_elf, only: [:show, :destroy]

  def index
    @elves = Elf.all
  end

  def show
  end

  def new
  end

  def create
  end

  def destroy
    @elf.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def set_elf
    @elf = Elf.find(params[:id])
  end
end
