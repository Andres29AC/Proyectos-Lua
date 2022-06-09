--Los poryectos Love2D tienen 3 secciones principales:
function love.load()
    local filename = "assets/worm.jpg"
    local imageData = love.image.newImageData(filename)
    love.window.setIcon(imageData)
    love.window.setTitle("Juego de Pong")
    --love.window.setMode(900,500)
    love.window.setFullscreen(false)
    puntuacionJ1 = 0
    puntuacionJ2 = 0
    
    reset("J1")

    fuente = love.graphics.newFont(50)
    fuentePausa = love.graphics.newFont(20)
    sonidoPong = love.audio.newSource("assets/rebote.mp3","static")
    sonidoPunto = love.audio.newSource("assets/gol.mp3","static")

    pause = false




end
function love.update(dt)
    if not pause then
        moverBarrita1(barraJ1,"w","s")
        moverBarrita2(barraJ2,"up","down")

        rebotarPelota(pelota)
    end
end
--Se pasa a dibujar
function love.draw()
    if  pause then
        love.graphics.setColor(love.math.random(0,255),love.math.random(0,255),love.math.random(0,255))
        love.graphics.setFont(fuentePausa)
        love.graphics.print("Juego en pausa pulsa enter para continuar",100,100)

    end





    love.graphics.setFont(fuente)
    --love.graphics.print(puntuacionJ1,100,100)
    --love.graphics.print(puntuacionJ2,800,100)
    if not pause then
        love.graphics.setColor(love.math.colorFromBytes(112,237,97))
    end 
    love.graphics.print(puntuacionJ1,(love.graphics.getWidth()/2)-112,50)
    love.graphics.print(puntuacionJ2,(love.graphics.getWidth()/2)+50,50)

    if not pause then
        love.graphics.setColor(love.math.colorFromBytes(189,8,28))
    end
    love.graphics.rectangle("fill",barraJ1.x,barraJ1.y,barraJ1.ancho,barraJ1.alto)
    if not pause then
        love.graphics.setColor(love.math.colorFromBytes(7,94,84))
    end
    love.graphics.rectangle("fill",barraJ2.x,barraJ2.y,barraJ2.ancho,barraJ2.alto)
    if not pause then
        love.graphics.setColor(love.math.colorFromBytes(213,89,24))
    end
    love.graphics.rectangle("fill",(love.graphics.getWidth()/2)-25,15+30,25,150)
    if not pause then
        love.graphics.setColor(love.math.colorFromBytes(149,171,80))
    end
    love.graphics.rectangle("fill",(love.graphics.getWidth()/2)-25,350-60,25,150)
    if not pause then
        love.graphics.setColor(love.math.colorFromBytes(96,93,179))
    end
    love.graphics.rectangle("fill",(love.graphics.getWidth()/2)-25,750-200,25,150)


    if not pause then
        love.graphics.setColor(love.math.colorFromBytes(234,63,56))
    end
    love.graphics.circle("fill",pelota.x,pelota.y,pelota.radio)
    


end
function love.keypressed(key,scancode,isrepeat)
    if key == "return" then
        pause = not pause
    end
    if key == "escape" then 
        love.event.quit()
    end
    
end
function moverBarrita1(barrita,movArriba,movAbajo)
    
    if love.keyboard.isDown(movArriba) and barrita.y >= 0 then
        barrita.y = barrita.y - barrita.velocidad
    end
    if love.keyboard.isDown(movAbajo) and barrita.y <= 530 then
        barrita.y = barrita.y + barrita.velocidad
    end
end
function moverBarrita2(barrita,movArriba,movAbajo)
    
    if love.keyboard.isDown(movArriba) and barrita.y >= 0 then
        barrita.y = barrita.y - barrita.velocidad
    end
    if love.keyboard.isDown(movAbajo) and barrita.y <= 530 then
        barrita.y = barrita.y + barrita.velocidad
    end
end
function rebotarPelota(pelota)
    if pelota.derecha then 
        pelota.x = pelota.x + pelota.velocidad
    else
        pelota.x = pelota.x - pelota.velocidad
    end
    if pelota.arriba then
        pelota.y = pelota.y - pelota.velocidad
    else
        pelota.y = pelota.y + pelota.velocidad
    end
    ---------------------------------------------------------------
    ---Condicionales para la mecanica de rebote de la pelota
    if (pelota.x) >= (barraJ1.x)
    and (pelota.x) <= (barraJ1.x + barraJ1.ancho)
    and (pelota.y-pelota.radio) <= (barraJ1.y + barraJ1.alto)
    and (pelota.y-pelota.radio) >= (barraJ1.y) then
        love.audio.play(sonidoPong)
        pelota.arriba = false
    end
    if (pelota.x) >= (barraJ1.x)
    and (pelota.x) <= (barraJ1.x + barraJ1.ancho)
    and (pelota.y+pelota.radio) >= (barraJ1.y)
    and (pelota.y+pelota.radio) <= (barraJ1.y + barraJ1.alto) then
        love.audio.play(sonidoPong)
        pelota.arriba = true
    end
    if (pelota.x) >= (barraJ2.x)
    and (pelota.x) <= (barraJ2.x + barraJ2.ancho)
    and (pelota.y-pelota.radio) <= (barraJ2.y + barraJ2.alto)
    and (pelota.y+pelota.radio) >= (barraJ2.y) then
        love.audio.play(sonidoPong)
        pelota.arriba = false
    end
    if (pelota.x) >= (barraJ2.x)
    and (pelota.x) <= (barraJ2.x + barraJ2.ancho)
    and (pelota.y+pelota.radio) >= (barraJ2.y)
    and (pelota.y+pelota.radio) <= (barraJ2.y + barraJ2.alto) then
        love.audio.play(sonidoPong)
        pelota.arriba = true
    end
    ---------------------------------------------------------------
    --Estas 2 condicionales es para que la pelota rebote con las barras
    if (pelota.x -pelota.radio) <= (barraJ1.x + barraJ1.ancho)
    and (pelota.x -pelota.radio) >= (barraJ1.x)
    and (pelota.y) >= (barraJ1.y)
    and (pelota.y) <= (barraJ1.y + barraJ1.alto) then
        love.audio.play(sonidoPong)
        pelota.derecha = true
        pelota.velocidad = pelota.velocidad + 1
    end
    if (pelota.x + pelota.radio) >= (barraJ2.x)
    and (pelota.x + pelota.radio) <= (barraJ2.x + barraJ2.ancho)
    and (pelota.y) >= (barraJ2.y)
    and (pelota.y) <= (barraJ2.y + barraJ2.alto) then
        love.audio.play(sonidoPong)
        pelota.derecha = false
        pelota.velocidad = pelota.velocidad + 1
    end
    --Para que se resetee cuando un jugador gana
    if(pelota.x + pelota.radio) >= (love.graphics.getWidth()) then
        reset("J1")
        love.audio.play(sonidoPunto)
        puntuacionJ1 = puntuacionJ1 + 1
    end
    if(pelota.x - pelota.radio) <= (2) then
        reset("J2")
        love.audio.play(sonidoPunto)
        puntuacionJ2 = puntuacionJ2 + 1
    end

    --Para que la pelota no se salta de la pantalla
    if(pelota.y + pelota.radio) >= (love.graphics.getHeight()) then
        pelota.arriba = true
    end
    if(pelota.y - pelota.radio) <= (0) then
        pelota.arriba = false
    end
end
function reset(jugador)
    barraJ1 = {}
    barraJ1.x = 50
    --barraJ1.y = 150
    barraJ1.y = love.graphics.getHeight()/2
    barraJ1.ancho = 25
    barraJ1.alto = 180
    barraJ1.velocidad = 5

    barraJ2 = {}
    --barraJ2.x = 820
    barraJ2.x = love.graphics.getWidth() - 70
    --barraJ2.y = 150
    barraJ2.y = love.graphics.getWidth()/2
    barraJ2.ancho = 25
    barraJ2.alto = 180
    barraJ2.velocidad = 5

    pelota = {}
    pelota.x= love.graphics.getWidth()/2
    pelota.y= love.graphics.getHeight()/2
    pelota.radio = 19
    if jugador == "J1" then
        pelota.derecha = false
    else
        pelota.derecha = true
    end
    pelota.arriba = false
    pelota.velocidad = 5
end

