class CommentsController < ApplicationController

    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(params[:comment].permit(:email, :comment))
        redirect_to root_path
    end

    def destroy
    end

end
