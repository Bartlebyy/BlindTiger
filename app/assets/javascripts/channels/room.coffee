App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    @clearPlayers()
    @addPlayers(data.players)

################################################################

  clearPlayers: ->
     $('.js-player-name').remove()

  addPlayers: (players) ->
    i = 0
    while i < players.length
      $('.js-player-names').append(
        "<p class='js-player-name'><b>" + (i+1) + ' </b>'
        + players[i] + '</p>')
      i++

