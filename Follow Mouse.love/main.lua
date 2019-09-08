function love.load()
    playerSpeed = 20
    playerX = 0
    playerY = 0

end

function love.update(dt)

    playerX = love.mouse.getX()
    playerY = love.mouse.getY()

--[[
    if love.keyboard.isDown("w") then
        playerY = playerY - 1
    end

    if love.keyboard.isDown("a") then
        playerX = playerX - 1
    end

    if love.keyboard.isDown("s") then
        playerY = playerY + 1
    end

    if love.keyboard.isDown("d") then
        playerX = playerX + 1
    end
    ]]--
end

function love.draw()    
    love.graphics.rectangle('fill', playerX, playerY, 100, 100)
    love.graphics.setColor(1, 0, 0)

    love.graphics.rectangle("fill", 200, 200, 80, 80)

    love.graphics.setColor(255,255,255,1)
end