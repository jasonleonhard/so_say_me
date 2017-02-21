# automatically send to all those who subscribe to this post page
class CommentsChannel < ApplicationCable::Channel
  def self.broadcast(comment)
    broadcast_to comment.post, comment:
      CommentsController.render(partial: 'comments/comment', locals: { comment: comment })
  end

  def subscribed
    # stream_from "some_channel"
    # usually use url or embedded tag to stream, for now just the last Post
    # only the last post works for this
    # a bit of a naive setup, but something that works for now
    stream_for Post.last
    # send render html to recepient, this is server side, client side is ? comments.coffee
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
