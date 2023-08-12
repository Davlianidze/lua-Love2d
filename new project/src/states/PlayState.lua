PlayState = Class{__includes = BaseState}

function PlayState:init()
    Map:init()
    Cheese:init()
    PowerCheese:init()
    Colliders:init()
    GhostRed:init()
    GhostGreen:init()
    GhostBlue:init()
    GhostYellow:init()
    Fruit:init()

    score = 0
    point = 0
    timer = 0
    health = 3
    ghosttime = 0
    canEat = false
    fruitSkin = 1
end

function PlayState:update(dt)
    Cheese:update(dt)
    PowerCheese:update(dt)
    Colliders:update(dt)
    GhostRed:update(dt)
    GhostGreen:update(dt)
    GhostBlue:update(dt)
    GhostYellow:update(dt)
    Fruit:update(dt)

    if love.keyboard.wasPressed('escape') then
		love.event.quit()
	end

    if point == 216 then
        stateMachine:change('levelserve')
    end 
end

function PlayState:render()
	Cheese:render()
    Fruit:render()
    PowerCheese:render()
    Colliders:render()
    Map:render()
    
    renderHealth(health)

    love.graphics.setFont(fonts['medium'])
	love.graphics.print('1UP ', 0, 0)
	love.graphics.print(tostring(score), 0, 20)

    love.graphics.setColor(255, 0, 0)
    love.graphics.print('Higscore', window_width / 2 - 65, 0, 0, 1)

    love.graphics.setColor(1, 1, 1)
    love.graphics.print(tostring(highScore), window_width / 2 - 40, 20, 0, 1)

    love.graphics.draw(textures['fruits'], quads['fruits'][fruitSkin], 450, 555, nil, 2.5)
end 