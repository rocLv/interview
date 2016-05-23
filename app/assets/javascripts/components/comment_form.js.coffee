@CommentForm = React.createClass
  getInitialState: ->
    user: ''
    body: ''
    commentable_type: @props.commentable_type
    commentable_id: @props.commentable_id
  handleChange: (e) ->
    name = e.target.name
    @setState "#{ name  }": e.target.value
  valid: ->
    @state.user && @state.body
  handleSubmit: (e) ->
    e.preventDefault()
    $.post '/comments', { comment: @state }, (data) =>
      @props.handleNewComment data
      @setState @getInitialState()
    , 'JSON'
  render: ->
    React.DOM.form
      className: 'form-inline'
      onSubmit: @handleSubmit
      React.DOM.div
        className: 'form-group'
        React.DOM.input
          type: 'text'
          placeholder: 'Your Name'
          name: 'user'
          value: @state.user
          onChange: @handleChange
      React.DOM.div
        className: 'form-group'
        React.DOM.input
          type: 'text'
          placeholder: 'Comment'
          name: 'body'
          value: @state.body
          onChange: @handleChange
      React.DOM.button
        type: 'submit'
        className: 'btn btn-primary'
        disabled: !@valid()
        'Submit'
