# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

App.chat_room = App.cable.subscriptions.create "ChatRoomChannel",
  connected: ->

  disconnected: ->

  received: (data) ->
    $('#messages').append data['message']

  message: (content) ->
    @perform 'message', message: content

$(document).on 'keypress', '[data-behavior~=chat_message]', (event) ->
  if event.keyCode is 13
    App.chat_room.message event.target.value
    event.target.value = ''
    event.preventDefault()
