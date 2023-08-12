PlayState = Class{__includes = BaseState}


function PlayState:render()
	love.graphics.print('Hello It Is Play State. If You Want Pause Press "p".', 100, 300)

	love.graphics.print('Pause', 1230, 10)

	if love.keyboard.isDown('p') then
		stateMachine:change('pause')
	end
	

end

