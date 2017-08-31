class RoomsController < ApplicationController

  def show
    if authorized_player?
      current_room
      @players = @room.players.pluck(:name)
    else
      redirect_to edit_room_path(token: token)
    end
  end

  def new
  end

  def edit
    @token = token
  end

  def create
    player = Player.new(player_params)

    if player.save
      room = Room.create
      player.update_attributes(room_id: room.id)
      session[:current_player_id] = player.id

      redirect_to action: 'show', token: room.token
    else
      render :new
    end
  end

  def update
    room = Room.find_by(room_params)
    player = Player.new(player_params)

    if room.present? && player.save
      player.update_attributes(room_id: room.id)
      session[:current_player_id] = player.id

      redirect_to action: 'show', token: room.token
    else
      render :edit
    end
  end

  private

  def player_params
    params.require(:player).permit(:name)
  end

  def room_params
    params.require(:player).permit(:token)
  end

  def token
    params[:token]
  end
end
