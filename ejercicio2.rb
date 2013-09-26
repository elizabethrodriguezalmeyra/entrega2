require 'clase_producto.rb'

class Purchase 
	def initialize
		products= Array.new
	end
	
	def add p
		products[length]= p
	end
	def total
		t= products.inject {0} {|producto, n | producto.precio + n }
		puts t
	end
	def delete p
		 products.delete_if {|produc| produc.codigo = p.codigo} 
	end
	def apply_discount
	t= total
	if products.length > 10 { 
		t= t - t*20/100	}
	puts t	
	end
end
