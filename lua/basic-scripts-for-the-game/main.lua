love.window.setTitle("Lek and the stupid dungeon")
function love.load()
    player = {}
    player.x = 400
    player.y = 300
    player.speed = 5
    sounds = {}
    sounds.walk = love.audio.newSource("audio/walk.wav", "static")
end

function love.update(dt)
    if love.keyboard.isDown("right") then
        player.x = player.x + player.speed
    end
    
    if love.keyboard.isDown("left") then
        player.x = player.x - player.speed
    end

    if love.keyboard.isDown("up") then
        player.y = player.y - player.speed
    end

    if love.keyboard.isDown("down") then
        player.y = player.y + player.speed
    end

    if love.keyboard.isDown("escape") then
        love.window.close()
      end
end

function love.draw()
    love.graphics.circle("fill", player.x, player.y, 45)
end