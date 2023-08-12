pacman = Class{}

function pacman:init()
    self.x = 225
    self.y = 375
    self.w = 25
    self.h = 25
    self.direction = direction
end

function pacman:update(dt)
    Direction()
    Move()
    Boundary()
end

function Direction()
    if pacman.direction == "left" then
		pacmanCollider.x = pacmanCollider.x - 3
	elseif pacman.direction == "right" then
		pacmanCollider.x = pacmanCollider.x + 3
	end
	
	if pacman.direction == "up" then
		pacmanCollider.y = pacmanCollider.y - 3
	elseif pacman.direction == "down" then
		pacmanCollider.y = pacmanCollider.y + 3
	end
end

function Move()
    if love.keyboard.wasPressed('up') or love.keyboard.wasPressed('w') then
        pacman.direction = "up"
        skin = 2
    end
    if love.keyboard.wasPressed('down') or love.keyboard.wasPressed('s') then
        pacman.direction = "down"
        skin = 4
    end
    if love.keyboard.wasPressed('left') or love.keyboard.wasPressed('a') then
        pacman.direction = "left"
        skin = 3
    end
   if love.keyboard.wasPressed('right') or love.keyboard.wasPressed('d') then
        pacman.direction = "right"
        skin = 1
    end
end

function Boundary()
    if pacmanCollider.x < boundaryLeft then
        pacmanCollider.x = boundaryRight - 1
    elseif pacmanCollider.x > boundaryRight then
        pacmanCollider.x = boundaryLeft - 1
    end
end