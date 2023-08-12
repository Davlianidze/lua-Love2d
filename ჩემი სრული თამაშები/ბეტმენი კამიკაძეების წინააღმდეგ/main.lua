require 'src/Dependencies'

VIRTUAL_WIDTH = 500
VIRTUAL_HEIGHT = 600


function love.load()
	love.graphics.setDefaultFilter('nearest', 'nearest')
	love.window.setTitle('ბეტმენი კამიკაძეების წინააღმდეგ')
	
	stateMachine =  StateMachine {
		['start'] = function() return StartState() end,
		['play'] = function() return PlayState() end,
		['end'] = function() return EndGameState() end,
		['highscore'] = function() return HighscoreState() end,
		['enter-highscore'] = function() return EnterHighscoreState() end
	}

	sounds = {
		['hit'] = love.audio.newSource('sounds/hit.wav', 'static'),
		['hurt'] = love.audio.newSource('sounds/hurt.wav', 'static'),
		['select'] = love.audio.newSource('sounds/select.wav', 'static'),
		['music'] = love.audio.newSource('sounds/hard.mp3', 'static')
	}

	fonts = {
		['large'] = love.graphics.newFont('font/geopixel.ttf', 32),
		['medium'] = love.graphics.newFont('font/geopixel.ttf', 22),
		['small'] = love.graphics.newFont('font/geopixel.ttf', 8),
	}

	textures = {
		['hearts'] = love.graphics.newImage('graphics/Hearts.png')
	}

	quads = {
		['hearts'] = GenerateQuads(textures['hearts'], 24, 16)
	}

	health = 3

	stateMachine:change('start', {
		highscores = loadHighscores()
	})
	
	sounds['music']:setLooping(true)
	sounds['music']:play()

	love.keyboard.keysPressed = {}
end


function love.keypressed(key)
	if key == 'escape' then
		love.event.quit()
	end

	love.keyboard.keysPressed[key] = true
end


function love.update(dt)
	stateMachine:update(dt)

	love.keyboard.keysPressed = {}
end


function love.draw()
	stateMachine:render()
end

function love.keyboard.wasPressed(key)
    if love.keyboard.keysPressed[key] then
        return true
    else
        return false
    end
end

function renderHealth(health)
	local healthX = 20
	
	for index = 1, health do
		love.graphics.draw(textures['hearts'], quads['hearts'][1], healthX, 570)
		healthX = healthX + 29
	end
	
	for index = 1, 3 - health do
		love.graphics.draw(textures['hearts'], quads['hearts'][2], healthX, 570)
		healthX = healthX + 29
	end
end

function restart()
	bullets = {}
	enemies = {}

	canShootTimer = canShootTimerMax
	createEnemyTimer = createEnemyTimerMax

	Batman.x = 200
	Batman.y = 400

	health = 3
	score = 0
	isAlive = true
end


function loadHighscores()
	love.filesystem.setIdentity('Batman')
	
	if not love.filesystem.getInfo('Batman.lst') then
		local scores = ''
		for index = 10, 1, -1 do
			scores = scores .. 'NAM\n'
			scores = scores .. 0 .. '\n'
		end
		
		love.filesystem.write('Batman.lst', scores)
	end
	
	local name = true
	local currentName = nil
	local counter = 1
	
	local scores = {}
	

	for index = 1, 10 do
		scores[index] = {
			name = nil,
			score = nil
		}
	end
	
	for line in love.filesystem.lines('Batman.lst') do
		if name then
			scores[counter].name = string.sub(line, 1, 3)
		else
			scores[counter].score = tonumber(line)
			counter = counter + 1
		end
		
		name = not name
	end
	
	return scores
end
