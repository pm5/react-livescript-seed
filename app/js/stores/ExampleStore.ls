"use strict"

require! <[../constants/AppConstants events ../dispatcher/AppDispatcher]>

example = "hello, world!"

module.exports = ExampleStore = new events.EventEmitter! <<< do
  emitChange: ->
    @emit AppConstants.CHANGE_EVENT
  addChangeListener: (callback) ->
    @on AppConstants.CHANGE_EVENT, callback
  removeChangeListener: (callback) ->
    @removeListener CHANGE_EVENT, callback
  getAll: -> example

ExampleStore.dispatchToken = AppDispatcher.register ({action}) ->
  switch action.type
    | AppConstants.CHANGE_EVENT => example := action.example
  ExampleStore.emitChange!
  true
