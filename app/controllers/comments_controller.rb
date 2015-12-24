class CommentsController < ApplicationController

    def index
        @articles = Article.all
        @comments = Comment.all
    end
    
    def show
        @comment = Comment.find(params[:id])
    end
   
  def create
      Comment.create autors_name: params[:autors_name], content: params[:content], article_id: params[:article_id]
      redirect_to "/articles/#{params[:article_id]}"
  end
 
  
end
