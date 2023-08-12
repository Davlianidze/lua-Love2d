push = require 'push'
Class = require 'class'

require 'Util'

require 'Brick'
require 'Ball'

WINDOW_WIDTH = 1280
WINDOW_HEIGHT = 720

VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243


function love.load()
	textures = {
		['bricks'] = love.graphics.newImage('bricks.png'),
		['balls'] = love.graphics.newImage('main.png'),
		['hearts'] = love.graphics.newImage('Hearts.png')
	}
	
	quads = {
		['bricks'] = generateQuads(textures['bricks'], 32, 16),
		['balls'] = slice(generateQuads(textures['balls'], 8, 8), 2, 12, 2),
		['hearts'] = generateQuads(textures['hearts'], 16, 16),
	}
	
	
	push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
		fullscreen = false,
		resizable = true,
		vsync = true
	})
	
	health = 3
	
	keysPressed = {}
end

function love.resize(weight, height)
	push:resize(weight, height)
end

function love.keypressed(key)
	if key == 'escape' then
		love.event.quit()
	end
	
	keysPressed[key] = true
end

function wasPressed(key)
	if keysPressed[key] then
		return true
	end
	
	return false
end

function love.update(dt)
	if wasPressed('space') then
		health = health - 1
	end
	
	
	keysPressed = {}
end

function renderHealth(health)
	local healthX = 20
	
	for index = 1, health do
		love.graphics.draw(textures['hearts'], quads['hearts'][8], healthX, 10)
		healthX = healthX + 16
	end
	
	for index = 1, 3 - health do
		love.graphics.draw(textures['hearts'], quads['hearts'][1], healthX, 10)
		healthX = healthX + 16
	end
end

function love.draw()
	push:start()
	
	renderHealth(health)
	
	
	push:finish()
end
