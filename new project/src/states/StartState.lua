StartState = Class{__includes = BaseState}

local PBoundaryLeft = -350
local PBoundaryRight = 530

local PacmanX = -190

PACMAN = love.graphics.newImage('graphics/Run.png')

function StartState:update(dt)	
	if love.keyboard.wasPressed('enter') or love.keyboard.wasPressed('return') then
		stateMachine:change('serve', {
		})			
	end
	
	if love.keyboard.wasPressed('escape') then
		love.event.quit()
	end

	if PacmanX < PBoundaryLeft then
        PacmanX = PBoundaryRight - 1
    elseif PacmanX > PBoundaryRight then
        PacmanX = PBoundaryLeft - 1
    end

	PacmanX = PacmanX + 100 * dt
end

function StartState:render()
	love.graphics.setColor(200, 200, 0)
	love.graphics.setFont(fonts['large'])
    love.graphics.print("Pac-Man", 130, 80)

	love.graphics.setColor(1, 1, 1)
    love.graphics.draw(PACMAN, PacmanX, 150)

	love.graphics.setFont(fonts['medium'])

	love.graphics.setColor(250/255, 134/255, 57/255)
    love.graphics.print("PUSH START BUTTON", 100, 250)
	love.graphics.setColor(0, 10, 237)
	love.graphics.print("1 PLAYER ONLY", 130, 320)
	love.graphics.setColor(255/255, 191/255, 107/255)
	love.graphics.print("BONUS PAC-MAN FOR 10000 PTS", 30, 390)
	love.graphics.setColor(255/255, 176/255, 248/255)
	love.graphics.print("1980 MIDWAY MFG CO.", 100, 460)
	love.graphics.setColor(1, 1, 1)
	love.graphics.print("CREDIT 1", 0, 580)

	love.graphics.setColor(255, 0, 0)
    love.graphics.print('Higscore', window_width / 2 - 65, 0, 0, 1)

    love.graphics.setColor(1, 1, 1)
    love.graphics.print(tostring(highScore), window_width / 2 - 40, 20, 0, 1)
end


