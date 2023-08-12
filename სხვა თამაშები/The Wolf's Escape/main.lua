function love.load()
    love.window.setMode(1000, 768)


    anim8 = require 'libraries/anim8/anim8'
    sti = require 'libraries/Simple-Tiled-Implementation/sti'
    cameraFile = require 'libraries/hump/camera'

    cam = cameraFile()

    sprites = {}
    sprites.playerSheet = love.graphics.newImage('sprites/playerSheet.png')
    sprites.coin = love.graphics.newImage('sprites/coin.png')

    local grid = anim8.newGrid(64, 64, sprites.playerSheet:getWidth(), sprites.playerSheet:getHeight())
    local coinGrid = anim8.newGrid(200, 600, sprites.coin:getWidth(), sprites.coin:getHeight())

    animations = {}
    animations.coin = anim8.newAnimation(coinGrid('1-6', 1), 0.5)
    animations.idle = anim8.newAnimation(grid('1-1', 8), 0.05)
    animations.jump = anim8.newAnimation(grid('6-6', 4), 0.5)
    animations.run = anim8.newAnimation(grid('1-9', 12), 0.05)

    wf = require 'libraries/windfield/windfield'
    world = wf.newWorld(0, 800, false)
    world:setQueryDebugDrawing(true)

    score = 0

    world:addCollisionClass("Coin")
    world:addCollisionClass("Platform")
    world:addCollisionClass("Player", {ignores = {'Coin'}})
    world:addCollisionClass("Danger")

    require 'player'
    require 'coin'

    --dangerZone = world:newRectangleCollider(0, 500, 800, 60, {collision_class = "Danger"})
    --dangerZone:setType('static')

    platforms = {}

    loadMap()
end


function love.update(dt)
    world:update(dt)
    gameMap:update(dt)
    playerUpdate(dt)
    coinUpdate(dt)

    local px, py = player:getPosition()
    cam:lookAt(px, py)
end


function love.draw()
    cam:attach()
        world:draw()
        coinDraw()
        gameMap:drawLayer(gameMap.layers["Tile Layer 1"])
        drawPlayer()
        
    cam:detach()

    love.graphics.print("Score: " .. score, 50, 50, nil, 2, 2)
end

function love.keypressed(key)
    if key == 'up' then
        if player.grounded then
            player:applyLinearImpulse(0, -2000)
        end
    end
end

function spawnPlatform(x, y, width, height)
    if width > 0 and height > 0 then
        local platform = world:newRectangleCollider(x, y, width, height, {collision_class = "Platform"})
        platform:setType('static')
        table.insert(platforms, platform)
    end
end



function loadMap()
    gameMap = sti('maps/Level1.lua')
    for i, obj in pairs(gameMap.layers['Platforms'].objects) do
        spawnPlatform(obj.x, obj.y, obj.width, obj.height)
    end

    for i, obj in pairs(gameMap.layers['Coins'].objects) do
        spawnCoin(obj.x, obj.y)
    end
end


