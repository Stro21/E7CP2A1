# rubocop:disable LineLength
# rubocop:disable AsciiComments
# rubocop:disable SymbolProc

a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
print a
puts ''

# 1. Utilizando map generar un nuevo arreglo con cada valor aumentado en 1.

b = a.map { |e| e + 1 }
print b
puts ''

# 2. Utilizando map generar un nuevo arreglo que contenga todos los valores convertidos a float.

c = a.map { |e| e.to_f }
print c
puts ''

# 3. Utilizando map generar un nuevo arreglo que contenga todos los valores convertidos a string.

d = a.map { |e| e.to_s }
print d
puts ''

# 4. Utilizando reject descartar todos los elementos menores a 5 en el array.

e = a.reject { |i| i < 5 }
print e
puts ''

# 5. Utilizando select descartar todos los elementos mayores a 5 en el array.

f = a.reject { |i| i > 5 }
print f
puts ''

# 6. Utilizando inject obtener la suma de todos los elementos del array.

puts(a.inject { |sum, n| sum + n })

# 7. Utilizando group_by agrupar todos los números por paridad (si son pares, es un grupos, si son impares es otro grupo).
# 8. Utilizando group_by agrupar todos los números mayores y menores que 6.

# rubocop:enable LineLength
# rubocop:enable AsciiComments
# rubocop:enable SymbolProc
