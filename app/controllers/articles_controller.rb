class ArticlesController < ApplicationController
    def index
        @articles = Article.page(params[:page]).per(5)     
    end
        
        def new
           @articles = Article.new
        end
        
        def create
            Article.create title: params[:title], content: params[:content]
            redirect_to "/articles"
            
    end
        
  
    def show
        @articles = Article.all
        @article = Article.find(params[:id])
    end
        
        def edit
            @article = Article.find(params[:id])
        end
        
        def update
            Article.find(params[:id]).update title: params[:title], content: params[:content]
                redirect_to "/articles/#{params[:id]}"
        end
        
    
        def destroy
            Article.find(params[:id]).destroy
            redirect_to "/articles"
        end
        
        #private def article_params
            #params.require(:article).permit(:title, :content)
       # end
        
end
