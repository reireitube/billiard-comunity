class SessionController < ApplicationController
    
    def login
    end

    def test_login
        session[:id] = 1
        redirect_to("/post/index")
    end
    
    def check
        @user=User.find_by(email: params[:user][:email])
        if @user && @user.authenticate(params[:user][:password])
            flash[:notice]="ログインしました"
            session[:id]=@user.id
            redirect_to("/post/index")
            return
        else
            flash[:notice]="ログイン出来ませんでした"
            render("session/login")
        end
    end

    def create
        @user=User.new(
            name: params[:user][:name],
            email: params[:user][:email],
            password: params[:user][:password],
            level: params[:user][:level]
        )
        @user.save
        session[:id]=@user.id
        redirect_to("/post/index")
    end

    def destroy
        session.delete :id
        flash[:notice]="ログアウトしました"
        redirect_to :root
    end
end
