class StoreController < ApplicationController
    skip_before_filter :authorize
    
  def index
      @products = Product.all
      @cart = current_cart
      #if session[:counter].nil?
      #    session[:counter] = 0
      #    @counter = 0
      #else
       #   session[:counter] += 1
        #  @counter = session[:counter]
     # end
  end
  
  def mm
    #render :text => 'Hello world'
    @ss = "word xx "
    render :action => :ss
  end
  
  def nn
      @picture = Picture.new
  end
  
  def donn
  	
    # @picture = Picture.new(params[:picture])
    # if @picture.save
    #     redirect_to(:action => 'show', :id => @picture.id)
    # else
    #     render(:action => :nn)
    # end
  end
  
  def show
      @picture = Picture.find(params[:id])
  end

  def picture
  	@picture = Picture.find(params[:id])
  	send_data(@picture.data,
  		:filename => @picture.name,
  		:type => @picture.content_type,
  		:disposition => "inline")
  end
  
  def xx
     url = "http://localhost:9200";
     url = url + "/megacorp/employee/_search"
     redirect_to url ''
      
      
  end



def yy
    @result = '来自缓存'
    unless read_fragment(:action => 'yy')
        @result = '不是来自缓存'
    end
end

def zz 
    s = expire_page :action => 'yy'
    expire_action :action => 'yy'
    render :text => s.to_s
end

end