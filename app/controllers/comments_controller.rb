class CommentsController < ApplicationController

    def new
    end

    def create
      @comment = Comment.new(comment_params)
      if @comment.save
        redirect_to contacts_path, notice: "Comment has been submitted."
      else
        redirect_to contacts_path, alert: "There was an error submitting the comment. Please try again."
      end
    end


    private

    def comment_params
      params.require(:comment).permit(:first_name, :last_name, :email_address, :phone_number, :body)
    end
end
