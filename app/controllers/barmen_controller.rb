class BarmenController < ApplicationController

  def index
    @barmen = Barman.all
  end

  def show
    @barman = Barman.find(params[:id])
  end

  def new
    @barman = Barman.new
  end

  def create
    @barman = Barman.new(barman_params)
    if @barman.save
      redirect_to barman_path(@barman)
    else
      render :new
    end
  end

  def edit
    @barman = Barman.new
  end

  def update
    @barman = Barman.new(barman_params)
    if @barman.save
      redirect_to barman_path(@barman)
    else
      render :edit
    end
  end

private

  def barman_params
    params.require(:barman).permit(:name, :phone_number, :address, :description)
  end
end
