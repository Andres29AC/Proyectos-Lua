--Funcion para datos del entrenador
function datosEntrenador(nombre,edad,sexo,ciudad,numMedallas)
    --Diccionario para los datos del entrenador
    local datosEntrenador = {
        nombre = nombre,
        edad = edad,
        sexo = sexo,
        ciudad = ciudad,
        numMedallas = numMedallas
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
    return datosEntrenador
end
--Diccionario para los atributos de los pokemon
local atributosPokemon = {
    nombre = "",
    tipo = "",
    nivel = 0,
    naturaleza = "",
    vida = 0,
    ataque = 0,
    defensa = 0,
    ataqueEspecial = 0,
    defensaEspecial = 0,
    velocidad = 0
}
function pokemon(atributosPokemon)
    print("Ingrese el nombre del pokemon")
    atributosPokemon.nombre = io.read()
    print("Ingrese el tipo del pokemon")
    atributosPokemon.tipo = io.read()
    print("Ingrese el nivel del pokemon")
    atributosPokemon.nivel = io.read()
    print("Ingrese la naturaleza del pokemon")
    atributosPokemon.naturaleza = io.read()
    print("Ingrese la vida del pokemon")
    atributosPokemon.vida = io.read()
    print("Ingrese el ataque del pokemon")
    atributosPokemon.ataque = io.read()
    print("Ingrese la defensa del pokemon")
    atributosPokemon.defensa = io.read()
    print("Ingrese el ataque especial del pokemon")
    atributosPokemon.ataqueEspecial = io.read()
    print("Ingrese la defensa especial del pokemon")
    atributosPokemon.defensaEspecial = io.read()
    print("Ingrese la velocidad del pokemon")
    atributosPokemon.velocidad = io.read()
    print("Nombre: " .. atributosPokemon.nombre)
    print("Tipo: " .. atributosPokemon.tipo)
    print("Nivel: " .. atributosPokemon.nivel)
    print("Naturaleza: " .. atributosPokemon.naturaleza)
    print("Vida: " .. atributosPokemon.vida)
    print("Ataque: " .. atributosPokemon.ataque)
    print("Defensa: " .. atributosPokemon.defensa)
    print("Ataque especial: " .. atributosPokemon.ataqueEspecial)
    print("Defensa especial: " .. atributosPokemon.defensaEspecial)
    print("Velocidad: " .. atributosPokemon.velocidad)
    return atributosPokemon  
end
--Formar el equipo de pokemon
function equipoPokemon(entrenador)
    --llamando a la funcion pokemon
    local pokemon1 = pokemon(atributosPokemon)
    local pokemon2 = pokemon(atributosPokemon)  
    local pokemon3 = pokemon(atributosPokemon)
    local pokemon4 = pokemon(atributosPokemon)
    local pokemon5 = pokemon(atributosPokemon)
    local pokemon6 = pokemon(atributosPokemon)
    --Diccionario para el equipo de pokemon
    local valEquipoPokemon = {
        pokemon1 = pokemon1,
        pokemon2 = pokemon2,
        pokemon3 = pokemon3,
        pokemon4 = pokemon4,
        pokemon5 = pokemon5,
        pokemon6 = pokemon6
    }
    return valEquipoPokemon
end
--Funcion Menu general   



