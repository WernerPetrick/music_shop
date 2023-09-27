class DashboardController < ApplicationController

    before_action :user_session

    def dashboard
        
    end

    def account
    
    end

    def billing
    
    end

    def orders
    

    end

    def shipping
  
    end

    def createshipping
        @address = Address.new(shippingparams)
        if @address.save
            redirect_to dashboard_path, notice: "Account Successfully Created"
        else
            render :account, status: 422
        end
    end


    def wishlist
  

    end

    private

    def user_session
        if session[:user_id]
            @user = User.find_by(id: session[:user_id])
        end
    end


    def shippingparams
        params.permit(:street_number, :street_address, :city, :area_code, :province, :user_id)
    end

end