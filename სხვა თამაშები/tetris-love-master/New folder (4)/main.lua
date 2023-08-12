require 'naruto'


function love.load()
    naruto_load()
end

function love.update(dt)
   naruto_update(dt)
end

function love.draw()
    naruto_draw()
end

function love.keypressed(key, scancode, isrepeat)
	if key == "f11" then
		fullscreen = not fullscreen
		love.window.setFullscreen(fullscreen, "exclusive")
	end

    if key == 'escape' then
        love.window.close('quit')
    end
end

--1366x768