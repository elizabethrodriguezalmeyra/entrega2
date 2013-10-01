require_relative 'ejercicio2'
 
p1=Product.new "01","Martillo", 50.5
p2=Product.new "02","Clavosx100", 10
p3=Product.new "02","Clavosx100", 10
p4=Product.new "02","Clavosx100", 10
p5=Product.new "02","Clavosx100", 10
p6=Product.new "02","Clavosx100", 10
p7=Product.new "02","Clavosx100", 10
p8=Product.new "02","Clavosx100", 10
p9=Product.new "02","Clavosx100", 10
p10=Product.new "02","Clavosx100", 10
p11=Product.new "02","Clavosx100", 10
p12=Product.new "03","Destornillador", 40
p13=Product.new "03","Destornillador", 40
p14=Product.new "03","Destornillador", 40
p15=Product.new "03","Destornillador", 40


p=Purchase.new
p.add(p1)
p.add(p2)
p.add(p3)
p.add(p4)
p.add(p5)
p.add(p6)
p.add(p7)
p.add(p8)
p.add(p9)
p.add(p10)
p.add(p11)
p.add(p12)
p.add(p13)
p.add(p14)
p.add(p15)

#Realizo este metodo para calcular el costo total de los productos
p.sumar
puts "Precio: #{p.total}"
#Aplico el 1er descuento sobre la lista de productos
p.apply_discount do |purchase|
  purchase.total -= purchase.total * 0.2 if purchase.products.size > 10
end
puts "Precio con descuento: #{p.total}"

#Aplico el 2do descuento sobre la lista de productos
p.apply_discount do |purchase|
  iguales = Hash.new(0)
  purchase.products.each {|p| iguales[p.codigo] += 1}
  precios=Hash.new(0)
  purchase.products.each {|p| precios[p.codigo] = p.precio}
  k=0
  iguales.each do |m,i|
    prec= precios.values[k]
    purchase.total -= (i.to_i/3)*prec if(i.to_i > 3)
    k += 1
  end
  puts "Precio con el 2do descuento: #{p.total}"
end
