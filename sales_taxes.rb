class Product 
	attr_accessor :item_name, :quantity, :price, :tax
	def initialize (item_name, price, tax, total_price)
		@item_name   = item_name
		@quantity    = quantity
		@price       = price
		@tax         = tax
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
		@items       = []
		@tax_tally   = 0
		@grand_tally = 0		
	end

	def add_item(item)
		@items << item
	end

	def tax_total

		
	end

	def print_receipt
		@items.each do |item|
		puts "#{item.amount} #{item.name}"	
	end

	
	puts "Sales Taxes: #{tax_tally}"
	puts "Total: #{grand_tally}"

end



