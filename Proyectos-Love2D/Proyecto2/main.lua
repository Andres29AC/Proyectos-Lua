--Los poryectos Love2D tienen 3 secciones principales:
function love.load()
    love.window.setTitle("Pong")
    love.window.setMode(900,500)
    barraJ1 = {}
    barraJ1.x = 50
    barraJ1.y = 150
    barraJ1.ancho = 25
    barraJ1.alto = 180
    barraJ1.velocidad = 5

    barraJ2 = {}
    barraJ2.x = 820
    barraJ2.y = 150
    barraJ2.ancho = 25
    barraJ2.alto = 180
    barraJ2.velocidad = 5




end
function love.update(dt)
    moverBarrita(barraJ1,"w","s")
    moverBarrita(barraJ2,"up","down")
end
--Se pasa a dibujar
function love.draw()
    love.graphics.rectangle("fill",barraJ1.x,barraJ1.y,barraJ1.ancho,barraJ1.alto)
    --love.graphics.setColor(love.math.colorFromBytes(189,8,28))

    love.graphics.rectangle("fill",barraJ2.x,barraJ2.y,barraJ2.ancho,barraJ2.alto)
    --love.graphics.setColor(love.math.colorFromBytes(7,94,84))

end
function moverBarrita(barrita,movArriba,movAbajo)
    if love.keyboard.isDown(movArriba) and barrita.y >= 0 then
        barrita.y = barrita.y - barrita.velocidad
    end
    if love.keyboard.isDown(movAbajo) and (barrita.y + barrita.altura) <= love.graphics.getHeight() then
        barrita.y = barrita.y + barrita.velocidad
    end
end

