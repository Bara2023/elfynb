class ElvesController < ApplicationController
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
  end
end
