love.window.setTitle("Lek and the stupid dungeon")
splashScreenImage = love.graphics.newImage("splash_screen.png")
splashScreenTimer = 0
splashScreenShown = false

function love.load()
    player = {}
    player.x = 400
    player.y = 300
    splashScreenImage = love.graphics.newImage("splash_screen.png")
end

function love.update()
    splashScreenTimer = splashScreenTimer + love.timer.getDelta()

    if splashScreenTimer > 3 then
        splashScreenShown = false
    end
end

function love.draw()
    if not splashScreenShown then
        love.graphics.draw(splashScreenImage, 0, 0)

        if splashScreenTimer > 2 then
            love.graphics.setColor(1, 1, 1, 1 - (splashScreenTimer - 2))
        end
    end
    love.graphics.circle("fill", player.x, player.y, 50)
end