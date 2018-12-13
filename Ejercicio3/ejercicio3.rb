alumnos = []

def ingresar_persona(str1, str2, str3, str4)
  persona = {}
  persona[:nombre] = str1
  persona[:edad] = str2
  persona[:comuna] = str3
  persona[:género] = str4
  persona
end

alumnos.push(ingresar_persona('Eduardo', 29, 'Las Condes', 'Masculino'))
print alumnos
puts ''
