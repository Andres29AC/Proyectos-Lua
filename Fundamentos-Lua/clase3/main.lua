--corutines
--Tablas
--Meta tablas
--Meta metodos
--Test
--Closures es lo mismo que funciones anonimas
--Manejo de Errores
--Integracion con C++
--Configuraciones para el editor NeoVim
--serializacion
--Programacion Funcional
--Creacion de modulos y paquetes
--tablas internas

-- local buffer = ""
-- local filepath = ""
-- local file = nil

-- print("Editor de Texto")

-- while true do
		--   print("Menú:")
		--   print("1. Crear nuevo archivo")
		--   print("2. Editar archivo existente")
		--   print("3. Eliminar archivo")
		--   print("4. Guardar en archivo TXT")
		--   print("5. Salir")
		--   io.write("Seleccione una opción: ")
		--   local option = tonumber(io.read())

		--   if option == 1 then
		--     -- Crear nuevo archivo
		--     buffer = ""
		--     io.write("Ingrese el nombre del archivo (sin extensión): ")
		--     filepath = io.read()
		--     file = io.open(filepath .. ".txt", "w")
		--   elseif option == 2 then
		--     -- Editar archivo existente
		--     if file == nil then
		--       print("No hay un archivo abierto para editar.")
		--     else
		--       io.write("> ")
		--       local input = io.read()
		--       buffer = buffer .. input .. "\n"
		--     end
		--   elseif option == 3 then
		--     -- Eliminar archivo
		--     if file == nil then
		--       print("No hay un archivo abierto para eliminar.")
		--     else
		--       file:close()
		--       os.remove(filepath .. ".txt")
		--       file = nil
		--       buffer = ""
		--       print("Archivo eliminado.")
		--     end
		--   elseif option == 4 then
		--     -- Guardar en archivo TXT
		--     if file == nil then
		--       print("No hay un archivo abierto para guardar.")
		--     else
		--       file:write(buffer)
		--       file:close()
		--       print("Contenido guardado en " .. filepath .. ".txt")
		--     end
		--   elseif option == 5 then
		--     -- Salir
		--     if file ~= nil then
		--       file:close()
		--     end
		--     break
		--   else
		--     print("Opción inválida. Intente de nuevo.")
		--   end
		-- end

		--Funciones Anonimas
		--Funcion que tome un nombre y lo devuelva en mayusculas
		function mayusculas(nombre)
				return nombre:upper()
		end
		print(mayusculas("juan"))
		--Ahora lo mismo pero con una funcion anonima
		print((function(nombre) return nombre:upper() end)("juan"))
		--TODO Explicacion:
		--1. Se crea una funcion anonima que recibe un parametro y devuelve el parametro en mayusculas
		--2. Se llama a la funcion anonima y se le pasa el parametro "juan"
		--3. La funcion anonima devuelve el parametro en mayusculas
		--Ahora la anterior funcion la meteremos dentro de una funcion de orden superior
		--Funcion que recibe una funcion anonima y un parametro
		function contenerMayusculas(funcion, nombre)
				return funcion(nombre)
		end
		--Ahora llamamos a la funcion de orden superior y le pasamos la funcion anonima y el parametro
		print(contenerMayusculas(function(nombre) return nombre:upper() end, "juan"))
		--TODO Explicacion:
		--1. Se crea una funcion de orden superior que recibe una funcion anonima y un parametro
		--2. Se llama a la funcion de orden superior y se le pasa la funcion anonima y el parametro
		--3. La funcion de orden superior devuelve el parametro en mayusculas

		--Ahora veremos funciones de primer orden

		local json = require("json")
		local lisTecnicas = {}
		local nombre, edad, nombreArt, origen, altura, peso, nombreEmp, objetivo
		local informacionPeleador = {
				datosPersonales = function(nombreIngresado, edadIngresada)
						nombre = nombreIngresado
						edad = edadIngresada
				end,
				arteMarcial = function(nombreArtIngresado,origenIngresado)
						nombreArt = nombreArtIngresado
						origen = origenIngresado
				end,
				estadisticas = function(alturaIngresada, pesoIngresado)
						altura = alturaIngresada
						peso = pesoIngresado
				end,
				tecnicas = function(listaTecnicas)
						lisTecnicas = listaTecnicas
				end,
				empresa = function(nombreEmpIngresado, objetivoIngresado)
						nombreEmp = nombreEmpIngresado
						objetivo = objetivoIngresado
				end,
				mostrarDatos = function()
						print("Nombre: "..nombre)
						print("Edad: "..edad)
						print("Arte marcial: "..nombreArt)
						print("Origen: "..origen)
						print("Altura: "..altura)
						print("Peso: "..peso)
						print("Tecnicas: ")
						for i=1, #lisTecnicas do
								print(lisTecnicas[i])
						end
						print("Empresa: "..nombreEmp)
						print("Objetivo: "..objetivo)
				end
		}

		function pedirDatos()
				print("Ingrese el nombre del peleador")
				local nombreIngresado = io.read()
				print("Ingrese la edad del peleador")
				local edadIngresada = io.read()
				informacionPersonal = informacionPeleador.datosPersonales(nombreIngresado, edadIngresada)

				print("Ingrese el nombre del arte marcial")
				local nombreArtIngresado = io.read()
				print("Ingrese el origen del arte marcial")
				local origenIngresado = io.read()
				informacionPeleador.arteMarcial(nombreArtIngresado, origenIngresado)

				print("Ingrese la altura del peleador")
				local alturaIngresada = io.read()
				print("Ingrese el peso del peleador")
				local pesoIngresado = io.read()
				informacionPeleador.estadisticas(alturaIngresada, pesoIngresado)

				print("Ingrese las tecnicas del peleador (separadas por comas)")
				local tecnicasIngresadas = io.read()
				lisTecnicas = {}
				for word in string.gmatch(tecnicasIngresadas, '([^,]+)') do
						table.insert(lisTecnicas, word)
				end
				informacionPeleador.tecnicas(lisTecnicas)

				print("Ingrese el nombre de la empresa")
				local nombreEmpIngresado = io.read()
				print("Ingrese el objetivo de la empresa")
				local objetivoIngresado = io.read()
				informacionPeleador.empresa(nombreEmpIngresado, objetivoIngresado)

				informacionPeleador.mostrarDatos()
				local file = io.open("datos_peleador.txt", "w")
				file:write("Nombre: "..nombreIngresado.."\n")
				file:write("Edad: "..edadIngresada.."\n")
				file:write("Arte marcial: "..nombreArtIngresado.."\n")
				file:write("Origen: "..origenIngresado.."\n")
				file:write("Altura: "..alturaIngresada.."\n")
				file:write("Peso: "..pesoIngresado.."\n")
				file:write("Tecnicas: ")
				for i=1, #lisTecnicas do
						file:write(lisTecnicas[i]..", ")
				end
				file:write("\nEmpresa: "..nombreEmpIngresado.."\n")
				file:write("Objetivo: "..objetivoIngresado.."\n")
				file:close()
				local data = {
						nombre = nombreIngresado,
						edad = edadIngresada,
						arteMarcial = {
								nombre = nombreArtIngresado,
								origen = origenIngresado
						},
						estadisticas = {
								altura = alturaIngresada,
								peso = pesoIngresado
						},
						tecnicas = lisTecnicas,
						empresa = {
								nombre = nombreEmpIngresado,
								objetivo = objetivoIngresado
						}
				}

				local guardarJson = json.encode(data, {indent = true})
				local file = io.open("datos_peleador.json", "w")
				file:write(guardarJson)
				file:close()
				
		end
		print(pedirDatos())












