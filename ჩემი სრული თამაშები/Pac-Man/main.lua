require 'src/Dependencies'

function love.load()
    love.graphics.setDefaultFilter('nearest', 'nearest')
    highScore = loadHighScore()

    fonts = {
		['large'] = love.graphics.newFont('font/emulogic.ttf', 32),
		['medium'] = love.graphics.newFont('font/emulogic.ttf', 16),
		['small'] = love.graphics.newFont('font/emulogic.ttf', 8)
	}
    
	stateMachine =  StateMachine {
		['start'] = function() return StartState() end,
		['play'] = function() return PlayState() end,
        ['serve'] = function() return ServeState() end,
        ['level'] = function() return LevelState() end,
        ['levelserve'] = function() return LevelServeState() end
	}

    sounds = {
		['eat'] = love.audio.newSource('sounds/pacman_chomp.wav', 'static'),
        ['opening'] = love.audio.newSource('sounds/opening.mp3', 'static'),
        ['die'] = love.audio.newSource('sounds/pacman_die.mp3', 'static'),
        ['intermission'] = love.audio.newSource('sounds/pacman_intermission.mp3', 'static'),
        ['ghost_eat'] = love.audio.newSource('sounds/ghost_eat.mp3', 'static'),
        ['fruit'] = love.audio.newSource('sounds/Fruit.mp3', 'static'),
	}

    textures = {
        ['Pac'] = love.graphics.newImage("graphics/playerQuad.png"),
        ['Red'] = love.graphics.newImage('graphics/RedGhostQuad.png'),
        ['Green'] = love.graphics.newImage('graphics/GreenGhostQuad.png'),
        ['Blue'] = love.graphics.newImage('graphics/BlueGhostQuad.png'),
        ['Yellow'] = love.graphics.newImage('graphics/YellowGhostQuad.png'),
        ['hearts'] = love.graphics.newImage('graphics/Heart.png'),
        ['fruits'] = love.graphics.newImage('graphics/fruits.png')
    }

    quads = {
        ['pacman'] = GenerateQuads(textures['Pac'], 25, 25),
        ['hearts'] = GenerateQuads(textures['hearts'], 40, 40),
        ['red'] = GenerateQuads(textures['Red'], 20, 20),
        ['green'] = GenerateQuads(textures['Green'], 20, 20),
        ['blue'] = GenerateQuads(textures['Blue'], 20, 20),
        ['yellow'] = GenerateQuads(textures['Yellow'], 20, 20),
        ['fruits'] = GenerateQuads(textures['fruits'], 16, 16)
    }


	stateMachine:change('start')

    love.keyboard.keysPressed = {}
    
    sounds['opening']:play()
end

function love.update(dt)
    stateMachine:update(dt)

    love.keyboard.keysPressed = {}

    timer = timer + 1 * dt
    serveTime = serveTime - dt

    if RGhostSkin == 2 and GGhostSkin == 2 and BGhostSkin == 2 and YGhostSkin == 2 then
        time(dt)
    end 

    if score > highScore then
        highScore = score
    end
end

function love.draw()
    stateMachine:render()
end

function love.keypressed(key)
	love.keyboard.keysPressed[key] = true
end

function love.keyboard.wasPressed(key)
    if love.keyboard.keysPressed[key] then
        return true
    else
        return false
    end
end

function renderHealth(health)
	local healthX = 10
	
	for index = 1, health do
		love.graphics.draw(textures['hearts'], quads['hearts'][1], healthX, 555)
		healthX = healthX + 50
	end
	
	for index = 1, 3 - health do
		love.graphics.draw(textures['hearts'], quads['hearts'][2], healthX, 555)
		healthX = healthX + 50
	end
end


function restart()
    pacmanCollider.x = 235
    pacmanCollider.y = 385
    pacman.direction = direction

    GhostRedCollider.x = 230
    GhostRedCollider.y = 310
    GhostGreenCollider.x = 250
    GhostGreenCollider.y = 310
    GhostBlueCollider.x = 205
    GhostBlueCollider.y = 330
    GhostYellowCollider.x = 230
    GhostYellowCollider.y = 330
    RDir = 'RUp1'
    GDir = 'Gup1'
    BDir = 'BUp1'
    YDir = 'YUp1'

    timer = 0
    health = health - 1
    if health == 0 then
        stateMachine:change('start', {
            saveHighScore()
        })
    end
    sounds['die']:play()
end


function time(dt)
    ghosttime = ghosttime + 1 * dt
    if ghosttime > 5 then
        RGhostSkin = 1 
        GGhostSkin = 1 
        BGhostSkin = 1 
        YGhostSkin = 1
        canEat = false
        ghosttime = 0
        GhostRed.speed = 2.5
        GhostGreen.speed = 2.5
        GhostBlue.speed = 2.5
        GhostYellow.speed = 2.5
    end
end

function saveHighScore()
    love.filesystem.write('pacman.txt', highScore)
end

function loadHighScore()
    if love.filesystem.getInfo('pacman.txt') then
        local  contents, size = love.filesystem.read('pacman.txt')
        return tonumber(contents)
    else
        return 0
    end
end