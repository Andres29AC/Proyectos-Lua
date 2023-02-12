require("Persona")
--Creando un objeto y pidiendo datos al usuario
p1 = Persona:new("","",0,"",0)
print("Introduce el nombre")
p1:setNombre(io.read())
print("Introduce los apellidos")
p1:setApellidos(io.read())
print("Introduce la edad")
p1:setEdad(io.read())
print("Introduce el correo")
p1:setCorreo(io.read())
print("Introduce el telefono")
p1:setTelefono(io.read())
print("Los datos introducidos son:")
print(p1:toString())




