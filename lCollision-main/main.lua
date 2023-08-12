local lCollision = require("lCollision")

	player = {}
	player.x = 10
	player.y = 10
	player.direction = "right"


-- Initializing colliders
playerCollider = lCollision:new(player.x, player.y, 50, 50)
lavaCollider = lCollision:new(500, 200, 200, 200)
wallCollider = lCollision:new(300, 10, 300, 50)
jajaCollider = lCollision:new(100, 10, 200, 200)

function love.load()
end

function love.update(dt)
	-- Player movement
	if player.direction == "left" then
		playerCollider.x = playerCollider.x - 3
	elseif player.direction == "right" then
		playerCollider.x = playerCollider.x + 3
	end
	
	if player.direction == "up" then
		playerCollider.y = playerCollider.y - 3
	elseif player.direction == "down" then
		playerCollider.y = playerCollider.y + 3
	end
	
	-- Collision detection
	if playerCollider:collides(lavaCollider) then
		playerCollider.x = x
		playerCollider.y = y
	end

	playerCollider:separate(wallCollider)
	playerCollider:separate(jajaCollider)
end

function love.keypressed(key)
    if key == "up" then
        player.direction = "up"
    elseif key == "down" then
        player.direction = "down"
    elseif key == "left" then
        player.direction = "left"
    elseif key == "right" then
        player.direction = "right"
    end
end

function love.draw()
	-- Draw the player as a white square
	love.graphics.setColor(1, 1, 1, 1)
	playerCollider:draw()
	
	-- Draw lava as a red square
	love.graphics.setColor(1, 0, 0, 1)
	lavaCollider:draw()

	-- Draw a wall as a white square
	love.graphics.setColor(1, 1, 1, 1)
	wallCollider:draw()

	jajaCollider:draw()
end