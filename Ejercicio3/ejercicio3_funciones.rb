# rubocop:disable LineLength
# rubocop:disable MethodLength
# rubocop:disable NegatedWhile
# rubocop:disable MultipleComparison

def ingresar_persona(str1, str2, str3, str4)
  persona = {}
  persona[:nombre] = str1
  persona[:edad] = str2
  persona[:comuna] = str3
  persona[:género] = str4
  persona
end

def programa(array)
  puts 'Opción 1: Permite ingresar los datos de una persona (Nombre, Edad, Comuna y Género).'
  puts 'Opción 2: Permite editar los datos de la persona.'
  puts 'Opción 3: Permite eliminar una persona.'
  puts 'Opción 4: Muestra la cantidad de personas ingresadas.'
  puts 'Opción 5: Muestra las comunas de todas las personas.'
  puts 'Opción 6: Muestra una lista con todas las personas que tengan entre 20 y 25 años.'
  puts 'Opción 7: Muestra la suma de las edades de todas las personas.'
  puts 'Opción 8: Muestra el promedio de las edades del grupo.'
  puts 'Opción 9: Muestra dos listas de personas, una por cada género.'
  puts 'Opción 10: Salir del programa.'
  opt = gets.chomp.to_i
  opciones(array, opt)
end

def opciones(array, opt)
  if opt == 1

  else
    puts 'Opción incorrecta.'
    programa(array)
  end
end

def opcion1(array)
  puts 'Ingresar nombre de la persona'
  name = chomp.to_s
  age = ingresar_edad
  puts 'Ingresar comuna donde vive la persona'
  comuna = chomp.to_s
  puts 'Ingresar género de la persona.'
  sexo = ingresar_sexo
  persona = ingresar_persona(name, age, comuna, sexo)
  array.push(persona)
  print array
  puts ''
  programa(array)
end

def ingresar_edad
  puts 'Ingrese la edad de la persona en años'
  age = gets.chomp.to_i
  until !age.is_a? Numeric
    puts 'Ingrese la edad de la persona en años'
    age = gets.chomp.to_i
  end
  age
end

def ingresar_sexo
  puts 'Ingresar género de la persona (es con mayuscula).'
  sexo = chomp.to_s
  until sexo_valido(sexo)
    puts 'Ingresar género de la persona (es con mayuscula).'
    sexo = chomp.to_s
  end
  sexo
end

def sexo_valido(sex)
  sex == 'Masculino' || sex == 'Femenino' || sex == 'Otro'
end

# rubocop:enable LineLength
# rubocop:enable MethodLength
# rubocop:enable NegatedWhile
# rubocop:enable MultipleComparison
