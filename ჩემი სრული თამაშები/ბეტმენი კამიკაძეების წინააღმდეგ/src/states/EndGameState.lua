EndGameState = Class{__includes = BaseState}

local hover = 1

function EndGameState:enter(params)
	self.score = params.score or 0
	self.highscores = params.highscores
end

function EndGameState:update(dt)
	if love.keyboard.wasPressed('up') or love.keyboard.wasPressed('down') then
		sounds['select']:play()
		hover = hover == 1 and 2 or 1
	end
	
	if love.keyboard.wasPressed('enter') or love.keyboard.wasPressed('return') then
		local highscore = false
		local scoreIndex = 0
		
		for index = 10, 1, -1 do
			local score = self.highscores[index].score or 0
			if self.score > score then
				highscoreIndex = index
				highscore = true
			end
		end
	
	
		if hover == 1 then
			stateMachine:change('enter-highscore', {
				highscores = self.highscores,
				score = self.score,
				scoreIndex = highscoreIndex
			})
		else
			stateMachine:change('start', {
				highscores = self.highscores
			})
		end
			
	end
	
end

function EndGameState:render()
	love.graphics.setColor(200, 200, 0)
	love.graphics.setFont(fonts['large'])
    love.graphics.print("Sen waage!", 150, 50)
    
		love.graphics.setFont(fonts['medium'])

	love.graphics.print("Seni qulaa:", 150, 100)
	love.graphics.print(tostring(score), 285, 100)

	love.graphics.setColor(255/255, 255/255, 255/255, 255/255)

    if hover == 1 then
        love.graphics.setColor(200, 200, 0, 255/255)
    end
    love.graphics.print("progresis Senaxva", 155, 250)

	love.graphics.setColor(255/255, 255/255, 255/255, 255/255)
        
    if hover == 2 then
        love.graphics.setColor(200, 200, 0, 255)
    end
    love.graphics.print("meniuSi dabruneba", 155, 300)

	love.graphics.setColor(255/255, 255/255, 255/255, 255/255)

	logo = love.graphics.newImage('graphics/Batlogo.png')
	lWidth = logo:getWidth()
	lHeight = logo:getHeight()
	
	love.graphics.draw(logo, 210, 400)

	W_Batman = love.graphics.newImage("graphics/W_Batman.png")
    WWidth = W_Batman:getWidth()
    WHeight = W_Batman:getHeight()

    love.graphics.draw(W_Batman, 330, 20)

end


