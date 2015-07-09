<!--atom_feed do |feed|
	feed.title "Who bounght #{@product.title}"
	
	latest_order = @product.orders.sort_by(&:updated_at).last
	feed.updated( lasest_order && latest_order.updated_at)
	
	@product.orderseach do |order|
		feed.entry()
end-->