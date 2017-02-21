# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

App.comments = App.cable.subscriptions.create "CommentsChannel",
  # call when subscription is ready for user on server
  connect: ->

  # call when subscription has been terminated by server
  disconnect: ->

  # called when incoming data on websocket for this channel
  # when comments occur append data to comments div by id (html fragment)
  # a bit of a naive setup, but something that works for now
  received: (data) ->
    $('#comments').append data.comment
