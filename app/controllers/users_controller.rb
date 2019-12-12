class UsersController < ApplicationController 

    def new
        @user = User.new
    end 

    def show
        @user = User.find(params[:id])
    end 

    def index
        @users = User.all.order(:id)
        @q = User.ransack(params[:q])
        @users = @q.result
    end 

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            flash[:auccess] = "Welcome to bookinator, #{@user.email}"
            redirect_to root_url
        else 
            render "new"
        end 
    end 
    private
   
    def user_params
        params.require(:user).permit(:id, :email, :password, :password_confirmation, :town, :address, :avatar)
    end 
end
