class Product 
	attr_accessor :quantity, :item, :price
	def initialize (quantity, item, price)
		@quantity = quantity
		@item     = item
		@price    = price
	end

	def print_list(list)
		list.each do |item|
			puts "#{@quantity}, #{@item}, #{@price}"
		end
	end

	puts "Enter item name"
	new_item = gets.chomp
	if new_item = "book" || "food" || "medical products"
		puts 'No tax applied to this item'
		
	end

end

class ProductBasicTax < Product
	def basic_tax(tax)
		tax = @price * 0.1

	end

end

class ProductImportDuty < Product
	def import_duty(duty)
		duty = @price * 0.05

	end
end



class Receipt
end

book = Product.new(1, 'book', 12.49)

