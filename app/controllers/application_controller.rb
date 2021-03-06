class ApplicationController < ActionController::Base
  before_filter :authorize
  protect_from_forgery
  
  private

    #获取session中cart_id对应的Cart对象
    def current_cart
        begin
            Cart.find(session[:cart_id])
        rescue ActiveRecord::RecordNotFound
            cart = Cart.create
            session[:cart_id] = cart.id
            cart
        end        
    end
    
  protected
    def authorize
        unless User.find_by_id(session[:user_id])
            redirect_to login_url, :notice => 'Please log in'
        end
    end
end
