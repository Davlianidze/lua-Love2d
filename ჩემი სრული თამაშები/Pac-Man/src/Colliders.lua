Colliders = Class{}

function Colliders:init()
    pacman:init()
    GhostRed:init()
    GhostGreen:init()
    GhostBlue:init()
    GhostYellow:init()

    pacmanCollider = lCollision:new(pacman.x, pacman.y, 25, 25)

    GhostRedCollider = lCollision:new(GhostRed.x, GhostRed.y, GhostRed.w, GhostRed.h)
    GhostGreenCollider = lCollision:new(GhostGreen.x, GhostGreen.y, GhostGreen.w, GhostGreen.h)
    GhostBlueCollider = lCollision:new(GhostBlue.x, GhostBlue.y, GhostBlue.w, GhostBlue.h)
    GhostYellowCollider = lCollision:new(GhostYellow.x, GhostYellow.y, GhostYellow.w, GhostYellow.h)
    
    wall1Collider = lCollision:new(0, 50, 500, 25)
    wall2Collider = lCollision:new(0, 50, 25, 200)
    wall3Collider = lCollision:new(475, 50, 25, 200)
    wall4Collider = lCollision:new(50, 100, 50, 50)
    wall5Collider = lCollision:new(50, 175, 75, 25)
    wall6Collider = lCollision:new(125, 75, 25, 75)
    wall7Collider = lCollision:new(25, 225, 75, 25)
    wall8Collider = lCollision:new(150, 175, 100, 25)
    wall9Collider = lCollision:new(150, 200, 25, 50)
    wall10Collider = lCollision:new(125, 225, 25, 25)
    wall11Collider = lCollision:new(175, 100, 25, 50)
    wall12Collider = lCollision:new(200, 100, 25, 25)
    wall13Collider = lCollision:new(250, 75, 25, 50)
    wall14Collider = lCollision:new(225, 150, 25, 25)
    wall15Collider = lCollision:new(300, 100, 50, 25)
    wall16Collider = lCollision:new(375, 75, 25, 50)
    wall17Collider = lCollision:new(425, 100, 25, 25)
    wall18Collider = lCollision:new(275, 150, 25, 100)
    wall19Collider = lCollision:new(250, 225, 25, 25)
    wall20Collider = lCollision:new(200, 225, 25, 25)
    wall21Collider = lCollision:new(350, 150, 25, 75)
    wall22Collider = lCollision:new(300, 150, 25, 25)
    wall23Collider = lCollision:new(325, 200, 25, 25)
    wall24Collider = lCollision:new(400, 150, 25, 50)
    wall25Collider = lCollision:new(450, 150, 25, 25)
    wall26Collider = lCollision:new(400, 225, 75, 25)
    wall27Collider = lCollision:new(475, 350, 25, 200)
    wall28Collider = lCollision:new(0, 525, 500, 25)
    wall29Collider = lCollision:new(0, 350, 25, 200)
    wall30Collider = lCollision:new(25, 350, 75, 25)
    wall31Collider = lCollision:new(400, 350, 75, 25)
    wall32Collider = lCollision:new(50, 400, 25, 100)
    wall33Collider = lCollision:new(75, 475, 25, 25)
    wall34Collider = lCollision:new(125, 475, 50, 25)
    wall35Collider = lCollision:new(200, 475, 25, 50)
    wall36Collider = lCollision:new(125, 350, 25, 25)
    wall37Collider = lCollision:new(325, 350, 50, 25)
    wall38Collider = lCollision:new(100, 400, 50, 50)
    wall39Collider = lCollision:new(375, 400, 25, 25)
    wall40Collider = lCollision:new(425, 400, 25, 25)
    wall41Collider = lCollision:new(400, 450, 50, 50)
    wall42Collider = lCollision:new(350, 500, 25, 25)
    wall43Collider = lCollision:new(325, 450, 50, 25)
    wall44Collider = lCollision:new(325, 400, 25, 50)
    wall45Collider = lCollision:new(275, 275, 25, 100)
    wall46Collider = lCollision:new(200, 350, 75, 25)
    wall47Collider = lCollision:new(175, 275, 25, 100)
    wall48Collider = lCollision:new(200, 275, 75, 25)
    wall49Collider = lCollision:new(175, 400, 125, 50)
    wall50Collider = lCollision:new(250, 450, 50, 50)
end

function Colliders:update(dt)
    pacman:update(dt)

    if pacmanCollider:collides(GhostRedCollider) then
        if canEat == false then
            restart()
        end
        if canEat == true then
            GhostRedCollider.x = 230
            GhostRedCollider.y = 310
            RDir = 'RUp1'
            score = score + 200
            GhostRed.speed = 0
            sounds['ghost_eat']:play()
        end
    elseif pacmanCollider:collides(GhostGreenCollider) then	
        if canEat == false then
            restart()
        end
        if canEat == true then
            GhostGreenCollider.x = 250
            GhostGreenCollider.y = 310
            GDir = 'Gup1'
            score = score + 200
            GhostGreen.speed = 0
            sounds['ghost_eat']:play()
        end
    elseif pacmanCollider:collides(GhostBlueCollider) then	
        if canEat == false then
            restart()
        end
        if canEat == true then
            GhostBlueCollider.x = 205
            GhostBlueCollider.y = 330
            BDir = 'BUp1'
            score = score + 200
            GhostBlue.speed = 0
            sounds['ghost_eat']:play()
        end
    elseif pacmanCollider:collides(GhostYellowCollider) then	
        if canEat == false then
            restart()
        end
        if canEat == true then
            GhostYellowCollider.x = 230
            GhostYellowCollider.y = 330
                YDir = 'YUp1'
            score = score + 200
            GhostYellow.speed = 0
            sounds['ghost_eat']:play()
        end
    end

    pacmanCollider:separate(wall1Collider)
	pacmanCollider:separate(wall2Collider)
    pacmanCollider:separate(wall3Collider)
    pacmanCollider:separate(wall4Collider)
    pacmanCollider:separate(wall5Collider)
    pacmanCollider:separate(wall6Collider)
    pacmanCollider:separate(wall7Collider)
    pacmanCollider:separate(wall8Collider)
    pacmanCollider:separate(wall9Collider)
    pacmanCollider:separate(wall10Collider)
    pacmanCollider:separate(wall11Collider)
    pacmanCollider:separate(wall12Collider)
    pacmanCollider:separate(wall13Collider)
    pacmanCollider:separate(wall14Collider)
    pacmanCollider:separate(wall15Collider)
    pacmanCollider:separate(wall16Collider)
    pacmanCollider:separate(wall17Collider)
    pacmanCollider:separate(wall18Collider)
    pacmanCollider:separate(wall19Collider)
    pacmanCollider:separate(wall20Collider)
    pacmanCollider:separate(wall21Collider)
    pacmanCollider:separate(wall22Collider)
    pacmanCollider:separate(wall23Collider)
    pacmanCollider:separate(wall24Collider)
    pacmanCollider:separate(wall25Collider)
    pacmanCollider:separate(wall26Collider)
    pacmanCollider:separate(wall27Collider)
    pacmanCollider:separate(wall28Collider)
    pacmanCollider:separate(wall29Collider)
    pacmanCollider:separate(wall30Collider)
    pacmanCollider:separate(wall31Collider)
    pacmanCollider:separate(wall32Collider)
    pacmanCollider:separate(wall33Collider)
    pacmanCollider:separate(wall34Collider)
    pacmanCollider:separate(wall35Collider)
    pacmanCollider:separate(wall36Collider)
    pacmanCollider:separate(wall37Collider)
    pacmanCollider:separate(wall38Collider)
    pacmanCollider:separate(wall39Collider)
    pacmanCollider:separate(wall40Collider)
    pacmanCollider:separate(wall41Collider)
    pacmanCollider:separate(wall42Collider)
    pacmanCollider:separate(wall43Collider)
    pacmanCollider:separate(wall44Collider)
    pacmanCollider:separate(wall45Collider)
    pacmanCollider:separate(wall46Collider)
    pacmanCollider:separate(wall47Collider)
    pacmanCollider:separate(wall48Collider)
    pacmanCollider:separate(wall49Collider)
    pacmanCollider:separate(wall50Collider)
end

function Colliders:render()
    love.graphics.setColor(0, 0, 0)
	pacmanCollider:draw()

    love.graphics.setColor(0, 0, 0)
    GhostRedCollider:draw()

    love.graphics.setColor(0, 0, 0)
    GhostGreenCollider:draw()

    love.graphics.setColor(0, 0, 0)
    GhostBlueCollider:draw()

    love.graphics.setColor(0, 0, 0)
    GhostYellowCollider:draw()

    love.graphics.setColor(1, 1, 1)
	wall1Collider:draw()
	wall2Collider:draw()
    wall3Collider:draw()
    wall4Collider:draw()
    wall5Collider:draw()
    wall6Collider:draw()
    wall7Collider:draw()
    wall8Collider:draw()
    wall9Collider:draw()
    wall10Collider:draw()
    wall11Collider:draw()
    wall12Collider:draw()
    wall13Collider:draw()
    wall14Collider:draw()
    wall15Collider:draw()
    wall16Collider:draw()
    wall17Collider:draw()
    wall18Collider:draw()
    wall19Collider:draw()
    wall20Collider:draw()
    wall21Collider:draw()
    wall22Collider:draw()
    wall23Collider:draw()
    wall24Collider:draw()
    wall25Collider:draw()
    wall26Collider:draw()
    wall27Collider:draw()
    wall28Collider:draw()
    wall29Collider:draw()
    wall30Collider:draw()
    wall31Collider:draw()
    wall32Collider:draw()
    wall33Collider:draw()
    wall34Collider:draw()
    wall35Collider:draw()
    wall36Collider:draw()
    wall37Collider:draw()
    wall38Collider:draw()
    wall39Collider:draw()
    wall40Collider:draw()
    wall41Collider:draw()
    wall42Collider:draw()
    wall43Collider:draw()
    wall44Collider:draw()
    wall45Collider:draw()
    wall46Collider:draw()
    wall47Collider:draw()
    wall48Collider:draw()
    wall49Collider:draw()
    wall50Collider:draw()

    love.graphics.draw(textures['Pac'], quads['pacman'][skin], pacmanCollider.x, pacmanCollider.y)
    love.graphics.draw(textures['Red'], quads['red'][RGhostSkin], GhostRedCollider.x, GhostRedCollider.y)
    love.graphics.draw(textures['Green'], quads['green'][GGhostSkin], GhostGreenCollider.x, GhostGreenCollider.y)
    love.graphics.draw(textures['Blue'], quads['blue'][BGhostSkin], GhostBlueCollider.x, GhostBlueCollider.y)
    love.graphics.draw(textures['Yellow'], quads['yellow'][YGhostSkin], GhostYellowCollider.x, GhostYellowCollider.y)
end