class HomeController < ApplicationController

before_action :admin_confirm,{except:[:index,:search,:show,:search_result]}
    def index
        @home=Home.where.not(published_at: nil)
    end

    def new
    end

    def show
        @homes=Home.where(user_id: params[:id])
        
    end

    def admin_confirm
        if session[:id] != 5
            redirect_to("/home/index")
        end
    end

    def create
        @home=Home.new(
            prefecture: params[:homes][:prefecture],
            pool_hall: params[:homes][:pool_hall],
            published_at: params[:homes][:schedule],
            address: params[:homes][:address],
            user_id: params[:homes][:user_id]
        )
        @home.save
    
        redirect_to("/home/index")
    end

    def all
        @home=Home.select(:prefecture,:user_id).distinct
    end

    def edit
        @home=Home.find_by(id: params[:id])
    end

    def all_edit
        @home=Home.all
    end
    def update
        @home=Home.find_by(id: params[:id])
            @home.update_attributes(
                prefecture: params[:homes][:prefecture],
                pool_hall: params[:homes][:pool_hall],
                address: params[:homes][:address],
                published_at: params[:homes][:published_at]
            )
            if params[:homes][:published_at]==nil
                flash[:notice]="開始時間がNilです。もう一度やり直すか、Cmdで入力してください。"
            end
        redirect_to("/home/index")
    end

    def search
        @homes=Home.select(:prefecture,:user_id).distinct
    end

    def search_result
        @homes=Home.search(params[:search][:search])

    end

end
