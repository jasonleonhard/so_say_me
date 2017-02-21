# not needed: index, show, edit, update, destroy....
class CommentsController < ApplicationController
  before_action :set_post

  # look up post, create it and use white listed params,
  # then redirect to post rendering
  def create
    # store that comment for later mailer delivery and channel broadcasting
    comment = @post.comments.create! comments_params

    # mailer deliver later
    CommentsMailer.submitted(comment).deliver_later

    # render to page in real time using websocket channels
    CommentsChannel.broadcast(comment)

    redirect_to @post
  end

  def set_post
    @post = Post.find(params[:post_id])
  end

  # white list required
  def comments_params
    params.required(:comment).permit(:body)
  end
end
