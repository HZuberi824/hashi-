class CommentsController < ApplicationController


def create
    @photo = Photo.find(params[:photo_id])
    @comment = @photo.comments.create(comment_params)
    respond_to do |format|
      if @comment.save
        format.html {redirect_to @photo,notice:" successfully created"}
        format.js
      else
        format.html{render:new}
        render :new, status: :unprocessable_entity
      end
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:commentor, :body)
    end
end
