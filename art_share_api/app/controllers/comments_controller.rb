class CommentsController < ApplicationController
    def index
        if params[:comment][:commenter_id]
            commenter = User.find(params[:comment][:commenter_id])
            render json: commenter.comments
        elsif params[:comment][:artwork_id]
            artwork = Artwork.find(params[:comment][:artwork_id])
            render json: artwork.comments
        end

    end

    def create
        comment = Comment.new(comment_params)
        # replace the `user_attributes_here` with the actual attribute keys
        if comment.save
            render json: comment
        else
            render json: comment.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        comment = Comment.find(params[:id])
        comment.delete
        render json: comment
    end

    private
    def comment_params
        params.require(:comment).permit(:commenter_id, :artwork_id)
    end
end