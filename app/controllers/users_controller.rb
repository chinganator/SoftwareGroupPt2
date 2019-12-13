class UsersController < ApplicationController 
#Written by: Daniel Ching
  #Debugged by: Daniel Ching
  #Tested by: Daniel Ching
    def new
        @user = User.new
    end 

    def show
        @user = User.find(params[:id])
    end 

    def edit
        @user = User.find(params[:id])
    end 

    def index
        @users = User.all.order(:id)
        @q = User.ransack(params[:q])
        @users = @q.result
    end 
    def update
        @user = User.find params[:id]
        if @user.update(user_params)
            flash[:notice]= "User was updated"
            redirect_to user_path(@user)
        else 
            flash[:notice] = "User was not updated"
            render 'edit'
        end
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

    def set_user
        @user = User.find(params[:id])
    end 
end
