class Api::DrillsController < ApplicationController

  before_action :set_drill, only: [:show, :update, :destroy]

  def index
    render json: Drill.all
  end

  def create
    drill = Drill.new(drill_params)
    if drill.save
      render json: drill
    else
      render json: { message: drill.errors }, status: 400
    end
  end

  def show
    render json: @drill
  end

  def update
    if @drill.update(drill_params)
      render json: @drill
    else
      render json: { message: @drill.errors}, status: 400
    end
  end

  def destroy
    if @drill.destroy
      render status: 204
    else
      render json: { message: "Unable to delete drill" }, status: 400
    end
  end

private

  def set_drill
    @drill = Drill.find_by(id: params[:id])
  end

  def drill_params
    params.require(:drill).permit(:title, :description, :category)
  end

end
