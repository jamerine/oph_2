class CommentMailer < ApplicationMailer

  def comment_email(comment_id)
    @comment = Comment.find(comment_id)
    mail(:to => 'contact@ophcentralohio.com', :subject => "Website Comment Form", :from => @comment.email_address)
  end

end
