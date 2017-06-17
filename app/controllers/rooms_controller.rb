class RoomsController < ApplicationController

  def show
    @room = Room.find(params[:id])
    @players = @room.players.pluck(:name)
  end

  def new
  end

  def edit
  end

  def create
    player = Player.new(player_params)

    if player.save
      room = Room.create
      player.update_attributes(room_id: room.id)

      redirect_to action: 'show', id: room.id
    else
      render :new
    end
  end

  def update
  end

  private

  def player_params
    params.require(:player).permit(:name)
  end
end
