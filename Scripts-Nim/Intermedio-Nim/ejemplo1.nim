import sugar
import base64
import browsers
import algorithm
echo 0b1100

echo 1.Natural

#Uso de block en Nim 

#Aplicar block para el manejo de excepciones ejemplo
echo "Utilizando block"
block el_bloque_loco:
   echo "Dentró del bloque loco"
   break el_bloque_loco
echo "Fuera del bloque loco"

#Aplicando arrow Functions de javascript en Nim
#Explicacion: El modulo sugar permite el uso de arrow functions
#Nivel1
let saludar = (nombre: string) => echo "Hola " & nombre
saludar("Andre")
#Nivel2
let datosPersonales =(nombre: string, edad: int) => echo "Hola " & nombre & " tienes " & $edad & " años"
datosPersonales("Andre", 20)
#Adicional
#Aplicando arrow functions sin paremetros
let saludar2 = () => echo "Hola"
saludar2()
#Arrow functions multilinea
let postre = (nombre: string) => (
 let id = 1
 let precio = 100
 nombre & " " & $id & " " & $precio)
assert postre("Pastel") == "Pastel 1 100"
#assert sirve para validar que el resultado de la funcion sea el esperado
echo postre("Pastel")

#Estructurando codigo
proc main(celsius: int) =
  let kelvin = celsius + 273
  let fahrenheit = celsius * 9 div 5 + 32
  echo "Temperatura Celsius: ", celsius
  echo "Temperatura Fahrenheit: ", fahrenheit
  echo "Temperatura Kelvin: ", kelvin
when isMainModule:
 main(celsius = 100)

let codificarMensaje = (mensaje: string) => base64.encode(mensaje)
echo codificarMensaje("Hola mundo")

#openDefaultBrowser("https://www.youtube.com")

assert binarySearch([1, 2, 3, 4, 5], 3) == 2
echo binarySearch([1, 2, 3, 4, 5], 3)
#Explicacion: binarySearch es una funcion que permite buscar un elemento en un arreglo
#y retorna la posicion en la que se encuentra
#Uso de type 





