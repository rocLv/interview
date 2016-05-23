@Comment = React.createClass
  render: ->
    React.DOM.div null,
      React.DOM.h4 null, @props.comment.user
      React.DOM.p null, @props.comment.body
