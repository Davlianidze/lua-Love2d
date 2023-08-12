PowerCheese = Class{}

function PowerCheese:init()
    PowerCheese1 = lCollision:new(35, 510, 10, 10)
    PowerCheese2 = lCollision:new(460, 510, 10,  10)
    PowerCheese3 = lCollision:new(35, 85, 10, 10)
    PowerCheese4 = lCollision:new(460, 85, 10, 10)
end

function PowerCheese:update(dt)
    if pacmanCollider:collides(PowerCheese1) then
		PowerCheese1 = lCollision:new(0, 0, 0, 0)
		score = score + 60
        point = point + 1
		sounds['eat']:play()
        RGhostSkin = 2
        GGhostSkin = 2
        BGhostSkin = 2
        YGhostSkin = 2
        canEat = true
    elseif pacmanCollider:collides(PowerCheese2) then
		PowerCheese2 = lCollision:new(0, 0, 0, 0)
		score = score + 60
        point = point + 1
		sounds['eat']:play()
        RGhostSkin = 2
        GGhostSkin = 2
        BGhostSkin = 2
        YGhostSkin = 2
        canEat = true
    elseif pacmanCollider:collides(PowerCheese3) then
		PowerCheese3 = lCollision:new(0, 0, 0, 0)
		score = score + 60
        point = point + 1
		sounds['eat']:play()
        RGhostSkin = 2
        GGhostSkin = 2
        BGhostSkin = 2
        YGhostSkin = 2
        canEat = true
    elseif pacmanCollider:collides(PowerCheese4) then
		PowerCheese4 = lCollision:new(0, 0, 0, 0)
		score = score + 60
        point = point + 1
		sounds['eat']:play()
        RGhostSkin = 2
        GGhostSkin = 2
        BGhostSkin = 2
        YGhostSkin = 2
        canEat = true
    end
end

function PowerCheese:render()
    PowerCheese1:draw()
    PowerCheese2:draw()
    PowerCheese3:draw()
    PowerCheese4:draw()
end