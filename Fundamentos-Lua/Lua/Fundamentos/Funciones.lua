--Funciones
--Una función es un bloque de código que se puede ejecutar varias veces.
function saludar()
    print("Hola mundo")
end
--Llamar a la funcion
saludar()
--Funciones con parametros
function saludar(nombre)
    print("Hola " .. nombre)
end
--Llamar a la funcion
saludar("Andres")
--Funciones con retorno
function sumar(a, b)
    return a + b 
end
--Llamar a la funcion
local resultado = sumar(10, 20)
print("El resultado es: " .. resultado)
--Funciones anonimas
--Una función anónima es una función que no tiene nombre.
--Ejemplo
local funcion = function()
    print("Hola mundo")
end
--Llamar a la funcion
funcion()
--Funciones con parametros
local funcion = function(nombre)
    print("Hola " .. nombre)
end
--Llamar a la funcion
funcion("Andres")
--Funciones con retorno
local funcion = function(a, b)
    return a + b
end
--Llamar a la funcion
local resultado = funcion(10, 20)
print("El resultado es: " .. resultado)


