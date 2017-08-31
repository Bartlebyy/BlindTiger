class PlayersController < ApplicationController
  def destroy
    current_player.destroy
    redirect_to static_home_path
  end
end
