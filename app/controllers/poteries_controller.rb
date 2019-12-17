class PoteriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show]
  def index
    @poteries = Poterie.all
  end

  def show
    @poterie = Poterie.find(params[:id])
  end

  def new
    @poterie = Poterie.new
  end

  def create
    @poterie = Poterie.new(poteries_params)
    if @poterie.save
      redirect_to potery_path(@poterie)
    else
      render :new
    end
  end

  def edit
    @poterie = Poterie.find(params[:id])
  end

  def update
    @poterie = Poterie.find(params[:id])
    @poterie.update(poteries_params)
    redirect_to potery_path(@poterie)
  end

  private

  def poteries_params
  params.require(:poterie).permit(:name, :description, :date, :photo)
  end
end
