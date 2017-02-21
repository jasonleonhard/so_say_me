# Preview all emails at http://localhost:3000/rails/mailers/comments_mailer
class CommentsMailerPreview < ActionMailer::Preview

  # Preview this email at
  # http://localhost:3000/rails/mailers/comments_mailer/submitted
  def submitted
    # @comment = comment
    # CommentsMailer.submitted
    # CommentsMailer.submitted Comment.first
    # CommentsMailer.submitted Comment.first
    CommentsMailer.submitted Comment.first.body
  end

end
