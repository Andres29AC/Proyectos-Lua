--Tablas
--Las tablas son una estructura de datos que nos permite almacenar datos
--de diferentes tipos. Las tablas son similares a los arrays asociativos
--de otros lenguajes de programación. Las tablas en Lua son indexadas
--por valores de cualquier tipo, no solo por números. Las tablas en Lua
--son dinámicas, es decir, no es necesario declarar su tamaño. Las tablas
--en Lua son objetos, por lo que pueden ser pasadas como parámetros a
--funciones y retornadas como valores de funciones.
local tiposPokemon = {"Agua", "Fuego", "Planta"}
--Acceder a un elemento de la tabla
print(tiposPokemon[1])
--Acceder al tamaño de la tabla
print(#tiposPokemon)
--Agregar un elemento a la tabla
tiposPokemon[4] = "Electrico"
print(tiposPokemon[4])
--Recorrer una tabla
for i = 1, #tiposPokemon do
    print(tiposPokemon[i])
end
--Diccionarios
--Los diccionarios son una estructura de datos que nos permite almacenar
--datos de diferentes tipos. Los diccionarios son similares a los arrays
--asociativos de otros lenguajes de programación. Los diccionarios en Lua
--son indexados por valores de cualquier tipo, no solo por números. Los
--diccionarios en Lua son dinámicos, es decir, no es necesario declarar
--su tamaño. Los diccionarios en Lua son objetos, por lo que pueden ser
--pasados como parámetros a funciones y retornados como valores de
--funciones.
local datosEntrenador = {
    nombre = "",
    edad = 0,
    sexo = "",
    ciudad = "",
    numMedallas = 0
}
local equipoEntrenador = {
    pokemon1 = "",
    pokemon2 = "",
    pokemon3 = "",
    pokemon4 = "",
    pokemon5 = "",
    pokemon6 = ""
}
--Pedir datos al usuario
print("Ingrese su nombre")
datosEntrenador.nombre = io.read()
print("Ingrese su edad")
datosEntrenador.edad = io.read()
print("Ingrese su sexo")
datosEntrenador.sexo = io.read()
print("Ingrese su ciudad")
datosEntrenador.ciudad = io.read()
print("Ingrese el numero de medallas")
datosEntrenador.numMedallas = io.read()
--Imprimir los datos del entrenador
print("Nombre: " .. datosEntrenador.nombre)
print("Edad: " .. datosEntrenador.edad)
print("Sexo: " .. datosEntrenador.sexo)
print("Ciudad: " .. datosEntrenador.ciudad)
print("Numero de medallas: " .. datosEntrenador.numMedallas)
--Imprimir los datos del equipo del entrenador
--Pedir el nombre de los pokemon
print("Ingrese el nombre del pokemon 1")
equipoEntrenador.pokemon1 = io.read()
print("Ingrese el nombre del pokemon 2")
equipoEntrenador.pokemon2 = io.read()
print("Ingrese el nombre del pokemon 3")
equipoEntrenador.pokemon3 = io.read()
print("Ingrese el nombre del pokemon 4")
equipoEntrenador.pokemon4 = io.read()
print("Ingrese el nombre del pokemon 5")
equipoEntrenador.pokemon5 = io.read()
print("Ingrese el nombre del pokemon 6")
equipoEntrenador.pokemon6 = io.read()
--Imprimir los datos del equipo del entrenador
print("Pokemon 1: " .. equipoEntrenador.pokemon1)
print("Pokemon 2: " .. equipoEntrenador.pokemon2)
print("Pokemon 3: " .. equipoEntrenador.pokemon3)
print("Pokemon 4: " .. equipoEntrenador.pokemon4)
print("Pokemon 5: " .. equipoEntrenador.pokemon5)
print("Pokemon 6: " .. equipoEntrenador.pokemon6)


