# rubocop:disable LineLength
# rubocop:disable AsciiComments

nombres = %w[Violeta Andino Clemente Javiera Paula Pia Ray]
print nombres
puts ''

# 1. Extraer todos los elementos que excedan mas de 5 caracteres utilizando el método .select.

a = nombres.select { |e| e.length < 5 }
print a
puts ''

# 2. Utilizando .map crear una arreglo con los nombres en minúscula.

b = nombres.map(&:downcase!)
print b
puts ''
nombres = nombres.map(&:capitalize)

# 3. Utilizando .select para crear un arreglo con todos los nombres que empiecen con P.

c = nombres.select { |e| e[0] == 'P' }
print c
puts ''

# 4. Utilizando .map crear un arreglo único con la cantidad de letras que tiene cada nombre.

d = []
nombres.map { |e| d.push(e.length) }
print d
puts ''

# 5. Utilizando .map y .gsub eliminar las vocales de todos los nombres.

e = nombres.map { |nombre| nombre.gsub(/[aeiou]/, '') }
print e
puts ''

# rubocop:enable LineLength
# rubocop:enable AsciiComments
