require_relative 'ejercicio3_funciones.rb'

alumnos = []
hash1 = {}
hash2 = {}
hash3 = {}
hash4 = {}
hash1[:nombre] = 'Eduardo'
hash1[:edad] = 29
hash1[:comuna] = 'Las Condes'
hash1[:género] = 'Masculino'
hash2[:nombre] = 'Ale'
hash2[:edad] = 33
hash2[:comuna] = 'Ñuñoa'
hash2[:género] = 'Femenino'
hash3[:nombre] = 'Pedro'
hash3[:edad] = 24
hash3[:comuna] = 'Las Condes'
hash3[:género] = 'Masculino'
hash4[:nombre] = 'Caro'
hash4[:edad] = 22
hash4[:comuna] = 'Las Condes'
hash4[:género] = 'Femenino'
alumnos.push(hash1)
alumnos.push(hash2)
alumnos.push(hash3)
alumnos.push(hash4)
programa(alumnos)
print alumnos
puts ''
