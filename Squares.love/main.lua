function love.load()
    x=0
    y=0
-- Collectable 1
    C1_x = 0
    C1_y = 100
    c1_collected = 0
-- Collectable 2
    C2_x = 300
    C2_y = 400
    c2_collected = 0
-- Collectable 3
    C3_x = 40
    C3_y = 20
    c3_collected = 0
--Collection
    Collection=0
--Colours
    CollectColour={255, 0, 0, 1}
    CollectedColour={255, 255, 255, 1}
end

---------------------

function love.update(dt)
if x == C1_x then
    if y == C1_y then
        if Collection >= 0 then
            if c1_collected <= 0 then
                Collection = Collection + 1
                c1_collected = c1_collected + 1
            else

            end
        end
    end
end


if x == C2_x then
    if y == C2_y then
        if Collection >= 0 then
            if c2_collected <= 0 then
                Collection = Collection + 1
                c2_collected = c2_collected + 1
            else

            end
        end
    end
end

if x == C3_x then
    if y == C3_y then
        if Collection >= 0 then
            if c3_collected <= 0 then
                Collection = Collection + 1
                c3_collected = c3_collected + 1
            else

            end
        end
    end
end

    if love.keyboard.isDown('d') then
        x = x + 1
    elseif love.keyboard.isDown('a') then
        x = x - 1
    end

    if love.keyboard.isDown('w') then
        y = y - 1
    elseif love.keyboard.isDown('s') then
        y = y + 1
    end
end

------------

function love.draw()
-- Collectable 1

if c1_collected == 0 then
        love.graphics.setColor(CollectColour)
        love.graphics.rectangle("fill", C1_x, C1_y, 25, 25)
    end

if c1_collected == 1 then
    love.graphics.setColor(CollectedColour)
    love.graphics.rectangle("fill", 0, 0, 1, 1)
end

----------C2----------

if c2_collected == 0 then
    love.graphics.setColor(CollectColour)
    love.graphics.rectangle("fill", C2_x, C2_y, 25, 25)
end

if c2_collected == 1 then
love.graphics.setColor(CollectedColour)
love.graphics.rectangle("fill", 0, 0, 1, 1)
end

----------C3----------

if c3_collected == 0 then
    love.graphics.setColor(CollectColour)
    love.graphics.rectangle("fill", C3_x, C3_y, 25, 25)
end

if c3_collected == 1 then
love.graphics.setColor(CollectedColour)
love.graphics.rectangle("fill", 0, 0, 1, 1)
end
    
    love.graphics.setColor(255,255,255,1)
    love.graphics.rectangle("fill", x, y, 25, 25)



    love.graphics.print('Squares Collected: ' .. Collection, 0, 580)
    love.graphics.print('C1: ' .. c1_collected, 150, 580)

    love.graphics.print('C2: ' .. c2_collected, 200, 580)  
    
    love.graphics.print('C3: ' .. c3_collected, 250, 580)  
end