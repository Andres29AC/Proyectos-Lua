--Variables en Lua
--[[  
]]
--Tipos de datos
--Operadores aritmeticos
--Condicionales
--Metodos de Strings
--Bucles
--Tablas
--Funciones
--Modulos y paquetes 
--Corutinas 
--Metatables
--Interoperabilidad con C++
--Integracion con Bases de Datos
--Utilizar librerías de terceros escritas en Lua: hay muchas librerías de 
--terceros escritas en Lua que puedes utilizar para añadir funcionalidades 
--a tus proyectos de Lua. Por ejemplo, puedes utilizar librerías gráficas 
--como SDL o OpenGL con Lua para crear aplicaciones y juegos con gráficos 3D.
--Corono SDK
--Tipo de Datos
local var1 = 10
local var2 = 20.45
local sumar = var1 + var2
print(sumar)
--Operatorios Aritmeticos
local cadena1 = "Hola"
local cadena2 = "Mundo"
--Concatenando cadenas
local cadena3 = cadena1 .. cadena2
print(cadena3)
--Booleanos
local var1 = true
local var2 = false
--Operadores logicos
local var3 = var1 and var2
print(var3)
--Operadores relacionales
local var1 = 10
local var2 = 20
local var3 = var1 < var2
print(var3)
--Condicionales
local a = 10 
local b = 20
if a < b then
    print("a es menor que b")
else
    print("a es mayor que b")
end
print("Fin del programa")
--Bucles
--recorrer los 50 primeros numeros pares
for i = 1, 50, 2 do
    print(i)
end
--Metodos con Strings
local cadena = "Hola Mundo"
--Obtener el tamaño de la cadena
local size = string.len(cadena)
print("El size de la cadena es: " .. size)
--Obtener la posicion de la letra "a"
local posicion = string.find(cadena, "a")
print("La posicion de la letra a es: " .. posicion)
--Obtener la subcadena de la posicion 1 a la 4
local subcadena = string.sub(cadena, 1, 4)
print("La subcadena es: " .. subcadena)
--Mas metodos de strings
--string.byte
--sirve para extraer un caracter de una cadena
local extraer = string.byte(cadena, 1)
print("El caracter es: " .. extraer)
--string.char
--sirve para convertir un numero a caracter
local char1 = string.char(97)
print("El caracter es: " .. char1)
--string.upper
--sirve para convertir una cadena a mayusculas
local mayusculas = string.upper(cadena)
print("La cadena en mayusculas es: " .. mayusculas) 
--string.lower
--sirve para convertir una cadena a minusculas
local minusculas = string.lower(cadena)
print("La cadena en minusculas es: " .. minusculas)
--string.reverse
--sirve para invertir una cadena
local invertir = string.reverse(cadena)
print("La cadena invertida es: " .. invertir)
--string.format
--sirve para formatear una cadena
local format = string.format("El valor de la variable es: %d", 10)
print(format)
--string.rep
--sirve para repetir una cadena
local rep = string.rep(cadena, 3)
print("La cadena repetida es: " .. rep)
--string.gsub
--sirve para reemplazar una cadena por otra
local gsub = string.gsub(cadena, "Hola", "Adios")
print("La cadena reemplazada es: " .. gsub)
--String.match
--sirve para buscar una cadena dentro de otra
local match = string.match(cadena, "Mundo")
print("La cadena encontrada es: " .. match)
 