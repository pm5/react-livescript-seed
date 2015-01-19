"use strict"

require! <[../constants/AppConstants ../dispatcher/AppDispatcher]>

module.exports = do
  exampleChange: (example) ->
    AppDispatcher.handleViewAction {example} <<< do
      type: AppConstants.CHANGE_EVENT
