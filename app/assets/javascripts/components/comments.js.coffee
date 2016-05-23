@Comments = React.createClass
  getInitialState: ->
    comments: @props.data
  getDefaultProps: ->
    comments: []
  addComment: (comment) ->
    comments = @state.comments.slice()
    comments.push comment
    @setState comments: comments
  render: ->
    React.DOM.div
      className: 'comments'
      React.DOM.h2
        className: 'title'
        'Comments'
      for comment in @state.comments
        React.createElement Comment, key: comment.id, comment: comment, commentable: comment.commentable
      React.createElement CommentForm, handleNewComment: @addComment, commentable_type: 'Post', commentable_id: @state.comments[0].commentable_id, commentable_type: @state.comments[0].commentable_type
      React.DOM.hr null
