class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_player, :current_room, :authorized_player?

  def current_player
    @current_player = session[:current_player_id] &&
      Player.find(session[:current_player_id])
  end

  def current_room
    @room = Room.find_by(token: token)
  end

  def authorized_player?
    current_room.players.ids.include?(session[:current_player_id])
  end

  private

  def token
    params[:token]
  end
end
