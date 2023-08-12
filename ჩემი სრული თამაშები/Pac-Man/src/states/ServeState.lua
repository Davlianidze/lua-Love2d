ServeState = Class{__includes = BaseState}

function ServeState:init()
	Map:init()
    Cheese:init()
    PowerCheese:init()

	sounds['opening']:stop()
	sounds['intermission']:play()

	serveTime = 5.3
end

function ServeState:update(dt)
	if serveTime < 0 then
		stateMachine:change('play', {
            		
		})
	end
	
end

function ServeState:render()
	love.graphics.setColor(1, 1, 1)
	Cheese:render()
    PowerCheese:render()
    Map:render()
	
	love.graphics.setColor(255, 255, 0, 25)
	love.graphics.print("READY!", 175, 410, 0, 1.3)
end