class PostController < ApplicationController
  
    def index
        if session[:id] == 5
            @post=Post.all.order(id:"DESC")
            @user=User.all
        else 
            @post=Post.where.not(user_id:5).order(id:"DESC")
            @user=User.where.not(user_id:5)
        end
    end

    def show
        @post=Post.where(user_id: params[:id])
        @user=User.find_by(id: params[:id])
    end

    def new
        unless session[:id]
            render("session/login")
        end
    end

    def edit
    end

    def create
        @post=Post.new(
            content: params[:post][:content],
            user_id: session[:id]
        )
        @post.save
        redirect_to("/post/index")
    end
end
