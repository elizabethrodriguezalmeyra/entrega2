class Animal
	def initialize nomb
		@nombre=nomb
	end
	def metodo_nadar 
		puts "Este animal nada"
	end
	def metodo_camina
		puts "Este animal camina"
	end
end

class Mamifero< Animal
	
	def metodo_habla
		puts "Este animal habla"
	end
	def metodo_ladra
		puts "Este animal ladra"
	end
end

class Ave < Animal
	
	def metodo_vuela
		puts "Este animal habla"
	end
end

class Reptil < Animal
	
	def metodo_desplaza
		puts "Este animal se desplaza"
	end
	def metodo_ejercepresion
		puts "Este animal ejerce presion"
	end
	def metodo_muerde
		puts "Este animal muerde"
	end
end

class Anfibio < Animal
	def metodo_camina
		puts "Este animal no camina"
	end
	def metodo_salta
		puts "Este animal salta"
	end
class Pez < Animal
	def metodo_camina
		puts "Este animal no camina"
	end
end

class Persona < Mamifero
	def metodo_ladra
		puts "Este animal no sabe ladrar por naturaleza"
	end
end

class Perro < Mamifero
	def metodo_habla
		puts "Este animal no sabe hablar"
	end
end

class Ballena < Mamifero
	def metodo_habla
		puts "Este animal no sabe hablar"
	end
	def metodo_ladra
		puts "Este animal no ladra"
	end
	def metodo_camina
		puts "Este animal no habla"
	end
end

class Aguila < Ave
	def metodo_nada
		puts "Este animal no nada"
	end
end

class Pinguino < Ave
	def metodo_vuela
		puts "Este animal no vuela"
	end
end

class Cocodrilo < Reptil
	def metodo_desplaza
		puts "Este animal no se desplaza"
	end
	def metodo_ejercepresion
		puts "Este animal no ejerce presion"
	end
	def metodo_muerde
		puts "Este animal no muerde"
	end
end

class Boa < Reptil
	def metodo_camina
		puts "Este animal no camina"
	end
	def metodo_muerde
		puts "Este animal no muerde"
	end
end

class Cobra < Reptil
	def metodo_camina
		puts "Este animal no camina"
	end
	def metodo_ejercepresion
		puts "Este animal no ejerce presion"
	end	
end
class Sapo < Anfibio
	
end
	
class Tiburon < Pez
	
end
