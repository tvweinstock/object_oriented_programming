class Product 
	attr_accessor :item_name, :price, :tax, :total_price
	def initialize (item_name, price, tax, total_price)
		@item_name   = item_name
		@price       = price
		@tax         = tax
		@total_price = total_price
	end

	def tax_check
		if @item_name == "book" || @item_name == "chocolate bar" || @item_name == "packet of headache pills"
			@tax = 1.0
		elsif @item_name == "imported box of perfume"
			@tax = 1.05
		elsif @item_name == "music CD" || @item_name == "bottle of perfume"
			@tax = 1.1
		else
			@tax = 1.15

		end
	end
end

class Receipt

	def initialize 
		
	end

end



