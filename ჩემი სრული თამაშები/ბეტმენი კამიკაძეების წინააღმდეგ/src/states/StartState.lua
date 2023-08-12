StartState = Class{__includes = BaseState}


local hover = 1

function StartState:enter(params)
	self.highscores = params.highscores
end

function StartState:update(dt)
	if love.keyboard.wasPressed('up') or love.keyboard.wasPressed('down') then
		sounds['select']:play()
		hover = hover == 1 and 2 or 1
	end
	
	if love.keyboard.wasPressed('enter') or love.keyboard.wasPressed('return') then
	
	
		if hover == 1 then
			stateMachine:change('play', {
				highscores = loadHighscores(),
				restart()
			})
		else
			stateMachine:change('highscore', {
				highscores = self.highscores
			})
		end
			
	end
	
	if love.keyboard.wasPressed('escape') then
		love.event.quit()
	end
end

function StartState:render()
	love.graphics.setColor(200, 200, 0)
	love.graphics.setFont(fonts['large'])
    love.graphics.print("betmeni", 170, 50)
	love.graphics.print("kamikaZeebis", 130, 90)
	love.graphics.print("winaaRmdeg", 150, 130)
    
		love.graphics.setFont(fonts['medium'])

	love.graphics.setColor(255/255, 255/255, 255/255, 255/255)

    if hover == 1 then
        love.graphics.setColor(200, 200, 0, 255/255)
    end
    love.graphics.print("TamaSis dawyeba", 155, 250)

	love.graphics.setColor(255/255, 255/255, 255/255, 255/255)
        
    if hover == 2 then
        love.graphics.setColor(200, 200, 0, 255)
    end
    love.graphics.print("rekordebi", 155, 300)

	love.graphics.setColor(255/255, 255/255, 255/255, 255/255)

	logo = love.graphics.newImage('graphics/Batlogo.png')
	lWidth = logo:getWidth()
	lHeight = logo:getHeight()

	batman = love.graphics.newImage('graphics/Idle_Batman.png')
	bWidth = batman:getWidth()
	bHeight = batman:getHeight()
	
	love.graphics.draw(logo, 210, 400)
	love.graphics.draw(batman, 310, 40)
end

