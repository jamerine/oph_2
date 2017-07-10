class PositionsController < ApplicationController
  def index
    @positions = Position.active
  end

  def new
    @new_position = Position.new
  end

  def create
    @position = Position.new(position_params)
    if @position.save
      redirect_to position_path, notice: 'Position has been created'
    else
      redirect_to position_path, alert: 'There was an issue creating the position.  Please try again.'
    end
  end



  private

  def position_params
    params.require(:position).permit(:title, :location, :position_type, :description, :application, :active)
  end

end
