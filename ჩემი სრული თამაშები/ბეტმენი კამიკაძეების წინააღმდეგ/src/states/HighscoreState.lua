HighscoreState = Class{__includes = BaseState}

function HighscoreState:enter(params)
    self.highscores = params.highscores
end

function HighscoreState:update(dt)
    if love.keyboard.wasPressed('q') then
    
	--sounds['select']:play()
        stateMachine:change('start', {
            highscores = self.highscores
        })
    end
end

function HighscoreState:render()    
    love.graphics.setFont(fonts['large'])
    love.graphics.printf('rekordebi', 0, 20, VIRTUAL_WIDTH, 'center')
    love.graphics.setColor(200, 200, 0)
    love.graphics.setFont(fonts['large'])

    love.graphics.setColor(1, 1, 1, 1)
    for index = 1, 10 do
        local name = self.highscores[index].name or '_'
        local score = self.highscores[index].score or '_'

        love.graphics.printf(tostring(index) .. '.', VIRTUAL_WIDTH / 4, 
            60 + index * 30, 50, 'left')

        love.graphics.printf(name, VIRTUAL_WIDTH / 4 + 38, 
            60 + index * 30, 100, 'right')
        
        love.graphics.printf(tostring(score), VIRTUAL_WIDTH / 2,
            60 + index * 30, 150, 'right')
    end
    
    love.graphics.setColor(200, 200, 0)
    love.graphics.setFont(fonts['large'])
    love.graphics.printf("daaWire Q-s meniuSi gasasvlelad!",
        10, VIRTUAL_HEIGHT - 140, VIRTUAL_WIDTH, 'center')

    
end
