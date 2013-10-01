# encoding: utf-8
class Product
  attr_accessor :nombre, :precio, :codigo
  def initialize (c, n, p)
    @nombre=n
    @precio=p
    @codigo=c
  end
  def nombre
    puts @nombre
  end
  def precio
    puts @precio
  end
  def codigo
    puts @codigo
  end
end

class Purchase 
  def initialize
    @products= []
    @total=0
  end
  def add p
    products << p
    @total += p.precio
  end
  def total
    puts #{@total}
  end
  def delete p
    products.delete(p)
    @total -= p.precio
  end
end
p1 = Product.new '01', 'Martillo', '50'
p2 = Product.new '02', 'Clavos x 100', '10'
p = Purchase.new
p.add p1
p.add p2

p.total

