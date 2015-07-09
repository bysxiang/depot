class Order < ActiveRecord::Base
  attr_accessible :address, :email, :name, :pay_type
  PAYMENT_TYPES = ['Check', 'Credit card', 'Purchase order']
  has_many :line_items, :dependent => :destroy
  
  validates :name, :address, :email, :pay_type, :presence => true
  validates :pay_type, :inclusion => PAYMENT_TYPES
  
  scope :last_id, lambda { |days| where("id > ?", days)}
  
  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
        # 将每个项的cart_id置为nil, 并将item重新合并到order关联的line_items集合中。
        item.cart_id = nil
        line_items << item
    end    
  end
  
end
