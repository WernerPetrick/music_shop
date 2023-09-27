class AccountsController < ApplicationController

    def signup
        @user = User.new
    end

    def create
        @user =  User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to dashboard_path, notice: "Account Successfully Created"
        else
            render :signup, status: 422
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: "Logged out Successfully"
    end


    def login

    end

    def getaccess

        user = User.find_by(email: params[:email])
        if user.present? && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to dashboard_path, notice: "Logged In Successfully"
        else
            flash[:alert] = "Invalid email or password"
            puts "Invalid details"
            render :login, status: 422
        end

    end

    private

    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end

end