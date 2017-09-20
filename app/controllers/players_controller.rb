class PlayersController < ApplicationController

  def destroy
    @room = current_player.room
    current_player.destroy

    ActionCable.server.broadcast 'room_channel',
      players: @room.players.pluck(:name)

    redirect_to static_home_path
  end

end
