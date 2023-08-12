Fruit = Class{}

function Fruit:init()
    Cherry = {
        x = 105,
        y = 100
    }

    Strawberry = {
        x = 405,
        y = 400
    }

    Orange = {
        x = 200,
        y = 380
    }

    Apple = {
        x = 35,
        y = 380
    }

    Melon = {
        x = 230,
        y = 80
    }

    Bell = {
        x = 100,
        y = 280
    }
 
    Galaxian = {
        x = 200,
        y = 375
    }

    Key = {
        x = 400,
        y = 380
    }

    cherry = lCollision:new(Cherry.x, Cherry.y, 16, 16)
    strawberry = lCollision:new(Strawberry.x, Strawberry.y, 16, 16)
    orange = lCollision:new(Orange.x, Orange.y, 16, 16)
    apple = lCollision:new(Apple.x, Apple.y, 16, 16)
    melon = lCollision:new(Melon.x, Melon.y, 16, 16)
    bell = lCollision:new(Bell.x, Bell.y, 16, 16)
    galaxian = lCollision:new(Galaxian.x, Galaxian.y, 16, 16)
    key = lCollision:new(Key.x, Key.y, 16, 16)
end

function Fruit:update(dt)
    if timer > 20 then
        if fruitSkin == 1 then
            if pacmanCollider:collides(cherry) then
                cherry = lCollision:new(-100, 0, 0, 0)
                score = score + 100
                sounds['fruit']:play()
            end
        elseif fruitSkin == 2 then
            if pacmanCollider:collides(strawberry) then
                strawberry = lCollision:new(-100, 0, 0, 0)
                score = score + 300
                sounds['fruit']:play()
            end
        elseif fruitSkin == 3 then
            if pacmanCollider:collides(orange) then
                orange = lCollision:new(-100, 0, 0, 0)
                score = score + 500
                sounds['fruit']:play()
            end
        elseif fruitSkin == 4 then
            if pacmanCollider:collides(apple) then
                apple = lCollision:new(-100, 0, 0, 0)
                score = score + 700
                sounds['fruit']:play()
            end
        elseif fruitSkin == 5 then
            if pacmanCollider:collides(melon) then
                melon = lCollision:new(-100, 0, 0, 0)
                score = score + 1000
                sounds['fruit']:play()
            end
        elseif fruitSkin == 6 then
            if pacmanCollider:collides(bell) then
                bell = lCollision:new(-100, 0, 0, 0)
                score = score + 2000
                sounds['fruit']:play()
            end
        elseif fruitSkin == 7 then
            if pacmanCollider:collides(galaxian) then
                galaxian = lCollision:new(-100, 0, 0, 0)
                score = score + 3000
                sounds['fruit']:play()
            end
        elseif fruitSkin == 8 then
            if pacmanCollider:collides(key) then
                key = lCollision:new(-100, 0, 0, 0)
                score = score + 5000
                sounds['fruit']:play()
            end
        end
    end
end

function Fruit:render()
    if timer > 20 then
        if fruitSkin == 1 then
            love.graphics.setColor(0, 0, 0)
            cherry:draw()
            love.graphics.setColor(1, 1, 1)
            love.graphics.draw(textures['fruits'], quads['fruits'][fruitSkin], cherry.x, cherry.y)
        elseif fruitSkin == 2 then
            love.graphics.setColor(0, 0, 0)
            strawberry:draw()
            love.graphics.setColor(1, 1, 1)
            love.graphics.draw(textures['fruits'], quads['fruits'][fruitSkin], strawberry.x, strawberry.y)
        elseif fruitSkin == 3 then
            love.graphics.setColor(0, 0, 0)
            orange:draw()
            love.graphics.setColor(1, 1, 1)
            love.graphics.draw(textures['fruits'], quads['fruits'][fruitSkin], orange.x, orange.y)
        elseif fruitSkin == 4 then
            love.graphics.setColor(0, 0, 0)
            apple:draw()
            love.graphics.setColor(1, 1, 1)
            love.graphics.draw(textures['fruits'], quads['fruits'][fruitSkin], apple.x, apple.y)
        elseif fruitSkin == 5 then
            love.graphics.setColor(0, 0, 0)
            melon:draw()
            love.graphics.setColor(1, 1, 1)
            love.graphics.draw(textures['fruits'], quads['fruits'][fruitSkin], melon.x, melon.y)
        elseif fruitSkin == 6 then
            love.graphics.setColor(0, 0, 0)
            bell:draw()
            love.graphics.setColor(1, 1, 1)
            love.graphics.draw(textures['fruits'], quads['fruits'][fruitSkin], bell.x, bell.y)
        elseif fruitSkin == 7 then
            love.graphics.setColor(0, 0, 0)
            galaxian:draw()
            love.graphics.setColor(1, 1, 1)
            love.graphics.draw(textures['fruits'], quads['fruits'][fruitSkin], galaxian.x, galaxian.y)
        elseif fruitSkin == 8 then
            love.graphics.setColor(0, 0, 0)
            key:draw()
            love.graphics.setColor(1, 1, 1)
            love.graphics.draw(textures['fruits'], quads['fruits'][fruitSkin], key.x, key.y)
        end
    end
end