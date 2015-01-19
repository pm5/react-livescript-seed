"use strict"

{div} = React.DOM

require! <[./stores/ExampleStore ./actions/AppActionCreators]>

Panel = React.createFactory require './views/Panel'

App = React.createFactory React.createClass do
  componentWillMount: ->
    ExampleStore.addChangeListener @_onChange
    @setState do
      example: @getExampleState!
  componentWillUnmount: ->
    ExampleStore.removeChangeListener @_onChange
  handleExampleChange: (event) ->
    AppActionCreators.exampleChange event.target.value
  _onChange: -> @setState do
    example: @getExampleState!
  getExampleState: -> ExampleStore.getAll!
  render: ->
    div {className: "container"},
      div {className: "header"}
      Panel {example: @state.example, handleChange: @handleExampleChange}
      div {className: "footer"}

React.render App!, document.getElementById("app")
