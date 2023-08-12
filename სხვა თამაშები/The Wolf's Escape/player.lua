player = world:newRectangleCollider(360, 100, 35, 60, {collision_class = "Player"})
player:setFixedRotation(true)
player.speed = 240
player.animation = animations.idle
player.isMoving = false
player.direction = 1
player.grounded = true


function playerUpdate(dt)
    if player.body then

        local colliders = world:queryRectangleArea(player:getX() - 20, player:getY() + 30, 40, 2, {'Platform'})
        if #colliders > 0 then
            player.grounded = true
        else
            player.grounded = false
        end

        player.isMoving = false
        local px, py = player:getPosition()
        if love.keyboard.isDown('right') then
                player:setX(px + player.speed*dt)
                player.isMoving = true
                player.direction = 1
        end

        if love.keyboard.isDown('left') then
            player:setX(px - player.speed*dt)
            player.isMoving = true
            player.direction = -1
        end

        if player:enter('Danger') then
            player:setPosition(360, 100)
        elseif player:enter('Coin') then
            coin:destroy()
            score = score + 100
        end
    end

    if player.grounded then
        if player.isMoving then
            player.animation = animations.run
        else
            player.animation = animations.idle
        end
    else
        player.animation = animations.jump
    end

    player.animation:update(dt)
end

function drawPlayer()
    
    local px, py = player:getPosition()
    player.animation:draw(sprites.playerSheet, px, py, nil, 1.5 * player.direction, 1.5, 32, 40)

end