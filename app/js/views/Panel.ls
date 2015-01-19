"use strict"

{div, input} = React.DOM

module.exports = Panel = React.createClass do
  render: ->
    div {className: "panel"},
      input {id: "example", value: @props.example, onChange: @props.handleChange}
      div {id: "example-display"} @props.example
