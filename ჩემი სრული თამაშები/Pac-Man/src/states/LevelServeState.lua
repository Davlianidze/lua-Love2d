LevelServeState = Class{__includes = BaseState}

function LevelServeState:init()
	Map:init()
    Cheese:init()
    PowerCheese:init()

	serveTime = 5.3

    sounds['opening']:stop()
	sounds['intermission']:play()
end

function LevelServeState:update(dt)
	if serveTime < 0 then
		stateMachine:change('level', {
            		
		})
	end
end

function LevelServeState:render()
	love.graphics.setColor(1, 1, 1)
	Cheese:render()
    PowerCheese:render()
    Map:render()
	
	love.graphics.setColor(255, 255, 0, 25)
	love.graphics.print("READY!", 175, 410, 0, 1.3)
end