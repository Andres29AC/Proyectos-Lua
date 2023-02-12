Persona = {}

function Persona:new(nombre,apellidos,edad,correo,telefono)
  local obj = {nombre = nombre, apellidos = apellidos, edad = edad, correo = correo, telefono = telefono}
  setmetatable(obj, self)
  self.__index = self
  return obj
end
function Persona:getNombre()
  return self.nombre
end
function Persona:getApellidos()
  return self.apellidos
end
function Persona:getEdad()
  return self.edad
end
function Persona:getCorreo()
  return self.correo
end
function Persona:getTelefono()
  return self.telefono
end
function Persona:setNombre(nombre)
  self.nombre = nombre
end
function Persona:setApellidos(apellidos)
  self.apellidos = apellidos
end
function Persona:setEdad(edad)
  self.edad = edad
end
function Persona:setCorreo(correo)
  self.correo = correo
end
function Persona:setTelefono(telefono)
  self.telefono = telefono
end
function Persona:toString()
  return "Nombre: " .. self.nombre .. " Apellidos: " .. self.apellidos .. " Edad: " .. self.edad .. " Correo: " .. self.correo .. " Telefono: " .. self.telefono
end


