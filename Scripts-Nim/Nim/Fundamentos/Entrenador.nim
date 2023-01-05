import json
#Ahora utilizando json y guardarlo en un archivo json
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
