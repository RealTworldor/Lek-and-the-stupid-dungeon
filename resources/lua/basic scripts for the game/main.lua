love.window.setTitle("Lek and the stupid dungeon")
function love.load()
    player = {}
    player.x = 400
    player.y = 300
end

function love.update()
end

function love.draw()
    love.graphics.circle("fill", player.x, player.y, 50)
end