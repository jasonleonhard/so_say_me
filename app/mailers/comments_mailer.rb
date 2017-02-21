#
class CommentsMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.comments_mailer.submitted.subject

  # can also take a comment now
  def submitted(comment)
  # def submitted(comment="comment")
    # def submitted
    @greeting = "Hi"
    @comment = comment

    mail to: 'leonhard.jason@gmail.com', subject: "New comment: #{@comment}"
    # mail to: 'leonhard.jason@gmail.com', subject: "New comment"
  end
end
