# encoding: utf-8
class Animal
  def initialize (nomb)
    @nombre=nomb
  end
  def metodonadar 
    puts 'Este animal nada'
  end
  def metodocamina
    puts 'Este animal camina'
  end
end

class Mamifero < Animal
  def metodohabla
    puts 'Este animal habla'
  end
  def metodoladra
    puts 'Este animal ladra'
  end
end

class Ave < Animal
  def metodovuela
    puts 'Este animal habla'
  end
end

class Reptil < Animal
  def metododesplaza
    puts 'Este animal se desplaza'
  end
  def metodoejercepresion
    puts 'Este animal ejerce presion'
  end
  def metodomuerde
    puts 'Este animal muerde'
  end
end

class Anfibio < Animal
  def metodocamina
    puts 'Este animal no camina'
  end
  def metodosalta
    puts 'Este animal salta'
  end
end
class Pez < Animal
  def metodocamina
    puts 'Este animal no camina'
  end
end

class Persona < Mamifero
  def metodoladra
    puts 'Este animal no sabe ladrar por naturaleza'
  end
end

class Perro < Mamifero
  def metodohabla
    puts 'Este animal no sabe hablar'
  end
end

class Ballena < Mamifero
  def metodohabla
    puts 'Este animal no sabe hablar'
  end
  def metodoladra
    puts 'Este animal no ladra'
  end
  def metodocamina
    puts 'Este animal no habla'
  end
end

class Aguila < Ave
  def metodonada
    puts 'Este animal no nada'
  end
end

class Pinguino < Ave
  def metodovuela
    puts 'Este animal no vuela'
  end
end

class Cocodrilo < Reptil 
  def metododesplaza
    puts 'Este animal no se desplaza'
  end
  def metodoejercepresion
    puts 'Este animal no ejerce presion'
  end
  def metodomuerde
    puts 'Este animal no muerde'
  end
end

class Boa < Reptil
  def metodocamina
    puts 'Este animal no camina'
  end
  def metodomuerde
    puts 'Este animal no muerde'
  end
end

class Cobra < Reptil
  def metodocamina
    puts 'Este animal no camina'
  end
  def metodoejercepresion
    puts 'Este animal no ejerce presion'
  end	
end
class Sapo < Anfibio
end
class Tiburon < Pez
end
p=Persona.new "juan"
p.metodocamina
p2=Persona.new "Agustin"
p2.metodohabla
s=Sapo.new "Sapo"
s.metodosalta
a=Aguila.new "Aguila"
a.metodovuela
pe=Perro.new "Perro"
pe.metodovuela
