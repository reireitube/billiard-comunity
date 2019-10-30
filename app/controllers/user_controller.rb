class UserController < ApplicationController
        
    def top
        @homes=Home.select(:prefecture,:user_id).distinct
        if session[:id]
            redirect_to("/user/show")
        end
    end

    def new
    end

    def index
    end

    def show
        @user=User.find_by(id: session[:id])
    end

    def edit
        @user=User.find_by(id: session[:id])
        @home=Home.all
    end

    def update
        @user=User.find_by(id: session[:id])
        @user.update_attributes(
            name: params[:user][:name],
            email: params[:user][:email],
            password: params[:user][:password],
            level: params[:user][:level],
            bowlard: params[:user][:bowlard],
            your_pool: params[:user][:your_pool]
        )
        @user.save
        redirect_to("/user/#{session[:id]}")
    end
end
