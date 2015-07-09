class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :title
  default_scope :order => 'title'
  
  validates :title, :description, :image_url, :presence=> true
  validates :price, :numericality => {:gerater_than_or_equal_to => 0.01}
  validates :title, :uniqueness => true
  
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item
  
  private
    def ensure_not_referenced_by_any_line_item
        if line_items.empty?
            ture
        else
            errors.add(:base, 'Line Items present')
        end
        
    end
end
