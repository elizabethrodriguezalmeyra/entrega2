# encoding: utf-8
class Product
  attr_accessor :nombre, :precio, :codigo
  def initialize (codigo, nombre, precio)
    @nombre=nombre
    @precio=precio.to_f
    @codigo=codigo
  end
end

class Purchase 
  attr_accessor :products, :total
  def initialize
    @products= []
    @total= 0
  end
  
  def add (p)
    @products << p 
  end
  def sumar
    @total= products.reduce(0){|sum , n| sum + n.precio}
  end
  def cant
    puts @products.length
  end
  def delete (p)
    @products.delete(p)
  end
  def apply_discount
    yield self
  end
  
end

