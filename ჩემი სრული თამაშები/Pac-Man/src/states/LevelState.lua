LevelState = Class{__includes = BaseState}

function LevelState:init()
    Colliders:init()
    Map:init()
    Cheese:init()
    GhostRed:init()
    GhostGreen:init()
    GhostBlue:init()
    GhostYellow:init()
    PowerCheese:init()

    point = 0
    timer = 0
    health = health
    fruitSkin = fruitSkin + 1
    if fruitSkin >= 8 then
        fruitSkin = 8
    end
end

function LevelState:update(dt)
    Colliders:update(dt)
    Cheese:update(dt)
    GhostRed:update(dt)
    GhostGreen:update(dt)
    GhostBlue:update(dt)
    GhostYellow:update(dt)
    PowerCheese:update(dt)
    Fruit:update(dt)

    if point == 216 then
        stateMachine:change('levelserve')
    end
end

function LevelState:render()
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
