import Tables
import Sets
import json
#! Iniciando en Nim
#echo "Hola Mundo"
##[
Este es un comentario
de varias líneas.
]##

#var nombre: string 
#nombre = "Andres"

#echo "Hola ", nombre 
#var edad: int = 23
#echo "Tienes ", edad, " años"

#Pedir datos al usuario
echo "¿Cual es tu nombre?"
var nombre: string = stdin.readLine()
echo "Hola ", nombre

#Pedir datos al usuario con procedimiento
proc pedirNombre(nombre: string)=
  echo "Hola ", nombre, "!"
pedirNombre("Andres")

proc pedirDatos(edad: int, nombre: string)=
  echo "Hola ", nombre, " tienes ", edad, " años"
pedirDatos(24, "Andres") 

#Pedir datos nombre y edad con procedimiento y retorno
proc pedirDatos2(edad: int, nombre: string): string=
  result = "Hola " & nombre & " tienes " & $edad & " años"
echo pedirDatos2(24, "Andres")
#Explicación de $edad: $ es un operador que convierte un entero a string
#Explicación de &: & es un operador que concatena strings

#Ahora con clases
type
  Persona = object
    nombre: string
    edad: int
    carrera: string
proc presentarse(): Persona=
  result.nombre = "Andres"
  result.edad = 24
  result.carrera = "Ingenieria de Sistemas"
echo presentarse().nombre
echo presentarse().edad
echo presentarse().carrera
#Explicación de result: result es un valor especial que se usa para retornar valores en procedimientos
#Explicación de .: . es un operador que se usa para acceder a los atributos de un objeto
#Explicacion de Type: Type es una palabra reservada que se usa para definir una clase

#Ahora uso de Arreglos
var equipoPokemonGalar: array[6, string]
equipoPokemonGalar[0] = "Lucario"
equipoPokemonGalar[1] = "Pikachu"
equipoPokemonGalar[2] = "Dracovish"
equipoPokemonGalar[3] = "Dragonite"
equipoPokemonGalar[4] = "Gengar"
equipoPokemonGalar[5] = "Sirfetch'd"
#Creando Entrenador
type
  Entrenador = object
    nombre: string
    edad: int
    equipoPokemon: array[6, string]
proc crearEntrenador(nombre: string, edad: int, equipoPokemon: array[6, string]): Entrenador=
    result.nombre = nombre
    result.edad = edad
    result.equipoPokemon = equipoPokemon
var entrenador: Entrenador = crearEntrenador("Andres", 24, equipoPokemonGalar)
echo entrenador.nombre
echo entrenador.edad
echo entrenador.equipoPokemon

#Ahora uso de Listas
var listaPokemon: seq[string]
listaPokemon.add("Lucario")
listaPokemon.add("Pikachu")
listaPokemon.add("Dracovish")
listaPokemon.add("Dragonite")
listaPokemon.add("Gengar")
listaPokemon.add("Sirfetch'd")
type
  Entrenador2 = object
    nombre: string
    edad: int
    equipoPokemon: seq[string]
proc crearEntrenador2(nombre: string, edad: int, equipoPokemon: seq[string]): Entrenador2=
    result.nombre = nombre
    result.edad = edad
    result.equipoPokemon = equipoPokemon
var entrenador2: Entrenador2 = crearEntrenador2("Ash", 24, listaPokemon)
echo entrenador2.nombre
echo entrenador2.edad
echo entrenador2.equipoPokemon
#Explicación de add: add es un procedimiento que se usa para agregar elementos a una lista
#Explicación de seq: seq es un tipo de dato que se usa para crear listas

#Ahora uso de Diccionarios
var diccionarioPokemon: Table[string, string]
diccionarioPokemon["Lucario"] = "Fuego"
diccionarioPokemon["Pikachu"] = "Electrico"
diccionarioPokemon["Dracovish"] = "Agua/Dragon"
diccionarioPokemon["Dragonite"] = "Dragon/Volador"
diccionarioPokemon["Gengar"] = "Fantasma"
diccionarioPokemon["Sirfetch'd"] = "Lucha"
type
  Entrenador3 = object
    nombre: string
    edad: int
    equipoPokemon: Table[string, string]
proc crearEntrenador3(nombre: string, edad: int, equipoPokemon: Table[string, string]): Entrenador3=
    result.nombre = nombre
    result.edad = edad
    result.equipoPokemon = equipoPokemon
var entrenador3: Entrenador3 = crearEntrenador3("Ash", 24, diccionarioPokemon)
echo entrenador3.nombre
echo entrenador3.edad
echo entrenador3.equipoPokemon
#Explicación de Table: Table es un tipo de dato que se usa para crear diccionarios
#Explicación de []: [] es un operador que se usa para acceder a los elementos de un diccionario

#Ahora pidiendo al usuario que ingrese los datos de entrenador y pokemon
echo "Datos del entrenador: "
var equipoPokemon: Table[string, string]
echo "Ingresando el equipo pokemon del entrenador: "
echo "Ingrese el primer pokemon: "
echo "Ingrese el nombre del pokemon"
var nombrePokemon: string = stdin.readLine()
echo "Ingrese el tipo del pokemon"
var tipoPokemon: string = stdin.readLine()
equipoPokemon[nombrePokemon] = tipoPokemon
echo "Ingrese el segundo pokemon: "
echo "Ingrese el nombre del pokemon"
nombrePokemon = stdin.readLine()
echo "Ingrese el tipo del pokemon"
tipoPokemon = stdin.readLine()
equipoPokemon[nombrePokemon] = tipoPokemon
echo "Ingrese el tercer pokemon: "
echo "Ingrese el nombre del pokemon"
nombrePokemon = stdin.readLine()
echo "Ingrese el tipo del pokemon"
tipoPokemon = stdin.readLine()
equipoPokemon[nombrePokemon] = tipoPokemon
echo "Ingrese el cuarto pokemon: "
echo "Ingrese el nombre del pokemon"
nombrePokemon = stdin.readLine()
echo "Ingrese el tipo del pokemon"
tipoPokemon = stdin.readLine()
equipoPokemon[nombrePokemon] = tipoPokemon
echo "Ingrese el quinto pokemon: "
echo "Ingrese el nombre del pokemon"
nombrePokemon = stdin.readLine()
echo "Ingrese el tipo del pokemon"
tipoPokemon = stdin.readLine()
equipoPokemon[nombrePokemon] = tipoPokemon
echo "Ingrese el sexto pokemon: "
echo "Ingrese el nombre del pokemon"
nombrePokemon = stdin.readLine()
echo "Ingrese el tipo del pokemon"
tipoPokemon = stdin.readLine()
equipoPokemon[nombrePokemon] = tipoPokemon
type
  Entrenador4 = object
    nombre: string
    edad: string
    region: string
    equipoPokemon: Table[string, string]
proc crearEntrenador4(nombre: string, edad: string, region: string, equipoPokemon: Table[string, string]): Entrenador4=
    result.nombre = nombre
    result.edad = edad
    result.region = region
    result.equipoPokemon = equipoPokemon
var entrenador4: Entrenador4 = crearEntrenador4(stdin.readLine(), stdin.readLine(), stdin.readLine(), equipoPokemon)
echo "Su Nombre es: ", entrenador4.nombre
echo "Su Edad es: ",entrenador4.edad
echo "La Region de donde proviene es: ",entrenador4.region
echo "Su Equipo Pokemon es: ",entrenador4.equipoPokemon

#Segunda forma de pedir datos con Conjuntos
#Ahora uso de Sets (Conjuntos)
echo "2da Forma ahora con con HashSet: "
echo "Ingresando los datos del entrenador: "
echo "Equipo pokemon: "
var nombrePokemonD: HashSet[string]
var tipoPokemonD: HashSet[string]
#Explicación de HashSet: HashSet es un tipo de dato que se usa para crear conjuntos
#Agregando a un while para crear varios conjuntos
while true:
  echo "Ingrese el nombre del pokemon: "
  var nombrePokemon: string = stdin.readLine()
  nombrePokemonD.incl(nombrePokemon)
  echo "Ingrese el tipo del pokemon: "
  var tipoPokemon: string = stdin.readLine()
  tipoPokemonD.incl(tipoPokemon)
  echo "Desea agregar otro pokemon? (Si/No)"
  var respuesta: string = stdin.readLine()
  if respuesta == "No":
    break
type
    Entrenador5 = object
        nombre: string
        edad: string
        region: string
        equipoPokemon: HashSet[string]
        tipoPokemon: HashSet[string]
proc crearEntrenador5(nombre: string, edad: string, region: string, equipoPokemon: HashSet[string], tipoPokemon: HashSet[string]): Entrenador5=
    result.nombre = nombre
    result.edad = edad
    result.region = region
    result.equipoPokemon = equipoPokemon
    result.tipoPokemon = tipoPokemon
var entrenador5: Entrenador5 = crearEntrenador5(stdin.readLine(), stdin.readLine(), stdin.readLine(), nombrePokemonD, tipoPokemonD)
echo "Su Nombre es: ", entrenador5.nombre
echo "Su Edad es: ",entrenador5.edad
echo "La Region de donde proviene es: ",entrenador5.region
echo "Su Equipo Pokemon es: ",entrenador5.equipoPokemon
echo "Los tipos de pokemon son: ",entrenador5.tipoPokemon

#Tercera forma usando archivos json
#Ahora uso de Json
echo "3ra Forma ahora con Json: "
echo "Ingresando los datos del entrenador: "
let datosPersonalesK = newJObject()
echo "Ingresando datos personales: "
echo "Nombre entrenador: "
var nombreEntrenador: string = stdin.readLine()
echo "Edad entrenador: "
var edadEntrenador: string = stdin.readLine()
echo "Region entrenador: " 
var regionEntrenador: string = stdin.readLine()
echo "Numero de medallas: "
var numeroMedallas: string = stdin.readLine()
datosPersonalesK["nombreEntrenador"] = newJString(nombreEntrenador)
datosPersonalesK["edadEntrenador"] = newJString(edadEntrenador)
datosPersonalesK["regionEntrenador"] = newJString(regionEntrenador)
datosPersonalesK["numeroMedallas"] = newJString(numeroMedallas)
echo "Equipo pokemon: "
#Utilizando Json
let equipoPokemonK = newJObject()
#Agregando equipo al json
echo "Nombre del pokemon: "
var nombrePokemonK: string = stdin.readLine()
echo "Tipo del pokemon: "
var tipoPokemonK: string = stdin.readLine()
echo "Naturaleza del pokemon: "
var naturalezaPokemonK: string = stdin.readLine()
echo "Vida del pokemon: "
var vida: string = stdin.readLine()
echo "Ataque del pokemon: "
var ataque: string = stdin.readLine()
echo "Defensa del pokemon: "
var defensa: string = stdin.readLine()
echo "Ataque Especial del pokemon: "
var ataqueEspecial: string = stdin.readLine()
echo "Defensa Especial del pokemon: "
var defensaEspecial: string = stdin.readLine()
echo "Velocidad del pokemon: " 
var velocidad: string = stdin.readLine()
equipoPokemonK["nombrePokemon"] = newJString(nombrePokemonK)
equipoPokemonK["tipoPokemon"] = newJString(tipoPokemonK)
equipoPokemonK["naturalezaPokemon"] = newJString(naturalezaPokemonK)
equipoPokemonK["vida"] = newJString(vida)
equipoPokemonK["ataque"] = newJString(ataque)
equipoPokemonK["defensa"] = newJString(defensa)
equipoPokemonK["ataqueEspecial"] = newJString(ataqueEspecial)
equipoPokemonK["defensaEspecial"] = newJString(defensaEspecial)
equipoPokemonK["velocidad"] = newJString(velocidad)
echo "Datos del entrenador: ", datosPersonalesK
echo "Datos del pokemon: ", equipoPokemonK

#Ahora utilizandon archivos de texto y guardarlo en un archivo
echo "4ta Forma ahora con archivos de texto: "
echo "Guardando datos en un archivo de texto: "
echo "Ingresando los datos del entrenador: "
echo "Nombre del entrenador: "
var nombreEntrenadorG: string = stdin.readLine()
echo "Edad del entrenador: "
var edadEntrenadorG: string = stdin.readLine()
echo "Region del entrenador: "
var regionEntrenadorG: string = stdin.readLine()
echo "Numero de medallas: "
var numeroMedallasG: string = stdin.readLine()
echo "Nombre del pokemon: "
var nombrePokemonG: string = stdin.readLine()
echo "Tipo del pokemon: "
var tipoPokemonG: string = stdin.readLine()
echo "Naturaleza del pokemon: "
var naturalezaPokemonG: string = stdin.readLine()
echo "Vida del pokemon: "
var vidaG: string = stdin.readLine()
echo "Ataque del pokemon: "
var ataqueG: string = stdin.readLine()
echo "Defensa del pokemon: "
var defensaG: string = stdin.readLine()
echo "Ataque Especial del pokemon: "
var ataqueEspecialG: string = stdin.readLine()
echo "Defensa Especial del pokemon: "
var defensaEspecialG: string = stdin.readLine()
echo "Velocidad del pokemon: "
var velocidadG: string = stdin.readLine()
var archivo = open("datosEntrenador.txt", fmWrite)

archivo.write("Nombre del entrenador: " & nombreEntrenadorG & "\n")
archivo.write("Edad del entrenador: " & edadEntrenadorG & "\n") 
archivo.write("Region del entrenador: " & regionEntrenadorG & "\n")
archivo.write("Numero de medallas: " & numeroMedallasG & "\n")
archivo.write("Nombre del pokemon: " & nombrePokemonG & "\n")
archivo.write("Tipo del pokemon: " & tipoPokemonG & "\n")
archivo.write("Naturaleza del pokemon: " & naturalezaPokemonG & "\n")
archivo.write("Vida del pokemon: " & vidaG & "\n")
archivo.write("Ataque del pokemon: " & ataqueG & "\n" )
archivo.write("Defensa del pokemon: " & defensaG & "\n")
archivo.write("Ataque Especial del pokemon: " & ataqueEspecialG & "\n" )
archivo.write("Defensa Especial del pokemon: " & defensaEspecialG & "\n")
archivo.write("Velocidad del pokemon: " & velocidadG )
archivo.close()

#Ahora utilizando json y guardarlo en un archivo json
echo "5ta Forma ahora con Json y guardarlo en un archivo json: "
echo "Guardando datos en un archivo json: "
echo "Ingresando los datos del entrenador: "
let datosPersonalesJ = newJObject()
echo "Ingresando datos personales: "
echo "Nombre entrenador: "
var nombreEntrenadorJ: string = stdin.readLine()
echo "Edad entrenador: "
var edadEntrenadorJ: string = stdin.readLine()
echo "Region entrenador: "
var regionEntrenadorJ: string = stdin.readLine()
echo "Numero de medallas: "
var numeroMedallasJ: string = stdin.readLine()
datosPersonalesJ["nombreEntrenador"] = newJString(nombreEntrenadorJ)
datosPersonalesJ["edadEntrenador"] = newJString(edadEntrenadorJ)
datosPersonalesJ["regionEntrenador"] = newJString(regionEntrenadorJ)
datosPersonalesJ["numeroMedallas"] = newJString(numeroMedallasJ)
echo "Equipo pokemon: "
let equipoPokemonJ = newJObject()
echo "Nombre del pokemon: "
var nombrePokemonJ: string = stdin.readLine()
echo "Tipo del pokemon: "
var tipoPokemonJ: string = stdin.readLine()
echo "Naturaleza del pokemon: "
var naturalezaPokemonJ: string = stdin.readLine()
echo "Vida del pokemon: "
var vidaJ: string = stdin.readLine()
echo "Ataque del pokemon: "
var ataqueJ: string = stdin.readLine()
echo "Defensa del pokemon: "
var defensaJ: string = stdin.readLine()
echo "Ataque Especial del pokemon: "
var ataqueEspecialJ: string = stdin.readLine()
echo "Defensa Especial del pokemon: "
var defensaEspecialJ: string = stdin.readLine()
echo "Velocidad del pokemon: "
var velocidadJ: string = stdin.readLine()
equipoPokemonJ["nombrePokemon"] = newJString(nombrePokemonJ)
equipoPokemonJ["tipoPokemon"] = newJString(tipoPokemonJ)
equipoPokemonJ["naturalezaPokemon"] = newJString(naturalezaPokemonJ)
equipoPokemonJ["vida"] = newJString(vidaJ)
equipoPokemonJ["ataque"] = newJString(ataqueJ)
equipoPokemonJ["defensa"] = newJString(defensaJ)
equipoPokemonJ["ataqueEspecial"] = newJString(ataqueEspecialJ)
equipoPokemonJ["defensaEspecial"] = newJString(defensaEspecialJ)
equipoPokemonJ["velocidad"] = newJString(velocidadJ)
echo "Datos del entrenador: ", datosPersonalesJ
echo "Datos del pokemon: ", equipoPokemonJ
var archivoJ = open("datosEntrenador.json", fmWrite)
archivoJ.writeLine($datosPersonalesJ)
archivoJ.writeLine($equipoPokemonJ)
archivoJ.close()
