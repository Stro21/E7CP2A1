# rubocop:disable LineLength
# rubocop:disable MethodLength
# rubocop:disable AbcSize
# rubocop:disable MultipleComparison
# rubocop:disable ConditionalAssignment
# rubocop:disable CyclomaticComplexity
# rubocop:disable PerceivedComplexity

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
    opcion1(array)
  elsif opt == 2
    opcion2(array)
  elsif opt == 3
    opcion3(array)
  elsif opt == 4
    opcion4(array)
  elsif opt == 5
    opcion5(array)
  elsif opt == 10
    puts 'Se salio del programa.'
  else
    puts 'Opción incorrecta.'
    programa(array)
  end
end

def opcion1(array)
  puts 'Ingresar nombre de la persona'
  name = gets.chomp.to_s
  age = ingresar_edad
  puts 'Ingresar comuna donde vive la persona'
  comuna = gets.chomp.to_s
  sexo = ingresar_sexo
  persona = ingresar_persona(name, age, comuna, sexo)
  array.push(persona)
  print_data(array)
  programa(array)
end

def ingresar_edad
  puts 'Ingrese la edad de la persona en años'
  age = gets.chomp.to_i
  until age.is_a? Numeric
    puts 'Ingrese la edad de la persona en años'
    age = gets.chomp.to_i
  end
  age
end

def ingresar_sexo
  puts 'Ingresar género de la persona (es con mayuscula).'
  sexo = gets.chomp.to_s
  until sexo_valido(sexo)
    puts 'Ingresar género de la persona (es con mayuscula).'
    sexo = gets.chomp.to_s
  end
  sexo
end

def sexo_valido(sex)
  sex == 'Masculino' || sex == 'Femenino' || sex == 'Otro'
end

def opcion2(array)
  puts 'Seleccionar nombre a buscar para modificar sus datos'
  nombre = gets.chomp.to_s
  if nombre_esta(array, nombre)
    index = search_index(array, nombre)
    array = modificar_datos(array, index)
  else
    puts 'El nombre de la persona que quiere modificar no esta.'
  end
  programa(array)
end

def nombre_esta(array, name)
  array.each { |a| return true if a[:nombre] == name }
  false
end

def modificar_datos(array, ind)
  persona = hacer_modificacion(array, ind, 'nombre', true)
  persona = hacer_modificacion(persona, ind, 'edad', false)
  persona = hacer_modificacion(persona, ind, 'comuna', true)
  persona = hacer_modificacion(persona, ind, 'género', true)
  print_data(persona)
  persona
end

def hacer_modificacion(array, ind, campo, es_string)
  puts '¿Quiere cambiar el ' + campo + '?'
  respuesta = gets.chomp.to_s
  until si_no(respuesta)
    puts '¿Quiere cambiar el ' + campo + '?'
    respuesta = gets.chomp.to_s
  end
  if respuesta == 'Si' || respuesta == 'si'
    puts 'Ingresar nuevo ' + campo + '.'
    nuevo = gets.chomp.to_s
    if es_string
      array[ind][campo.to_sym] = nuevo
    else
      array[ind][campo.to_sym] = nuevo.to_i
    end
  end
  array
end

def search_index(array, name)
  i = 0
  array.each do |nombre|
    return i if nombre[:nombre] == name

    i += 1
  end
  null
end

def si_no(str)
  str == 'Si' || str == 'No' || str == 'si' || str == 'no'
end

def opcion3(array)
  puts 'Seleccionar nombre a buscar para eliminarlo.'
  nombre = gets.chomp.to_s
  if nombre_esta(array, nombre)
    index = search_index(array, nombre)
    array.delete_at(index)
  else
    puts 'El nombre de la persona que quiere eliminar no esta.'
  end
  print_data(array)
  programa(array)
end

def print_data(datos)
  print datos
  puts ''
end

def opcion4(array)
  puts 'La cantidad de personas ingresadas son ' + array.length.to_s + '.'
  programa(array)
end

def opcion5(array)
  comunas = []
  array.each { |per| comunas.push(per[:comuna]) if no_esta(comunas, per[:comuna]) }
  puts 'Todas las comunas que hay son:'
  comunas.each { |comuna| puts comuna }
  programa(array)
end

def no_esta(array, str)
  return true if array.nil?

  array.each { |e| return false if e == str }
  true
end

# rubocop:enable LineLength
# rubocop:enable MethodLength
# rubocop:enable AbcSize
# rubocop:enable MultipleComparison
# rubocop:enable ConditionalAssignment
# rubocop:enable CyclomaticComplexity
# rubocop:enable PerceivedComplexity
