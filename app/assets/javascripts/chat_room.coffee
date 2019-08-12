# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

App.chat_room = App.cable.subscriptions.create "ChatRoomChannel",
  connected: ->

  disconnected: ->

  received: (data) ->
    $('#messages').append data['message']
