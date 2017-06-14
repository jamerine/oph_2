class ContactsController < ApplicationController

  def index
    @new_comment = Comment.new
  end

end
