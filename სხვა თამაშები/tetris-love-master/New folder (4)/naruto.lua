naruto = {}

local boundaryLeft = 0
local boundaryRight = love.graphics.getWidth()
local boundaryTop = 0
local boundaryBottom = love.graphics.getHeight()

GRAVITY = 90

VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243


function naruto_load()
    love.graphics.setDefaultFilter('nearest', 'nearest')
    _G.naruto = {
        x = 0,
        y = 700,

        sprite = love.graphics.newImage('Naruto_Run_Right.png'),
        animation = {
            direction = "right",
            idle = true,
            frame = 1,
            max_frames = 6,
            speed = 100,
            timer = 0.1
        }
    }

    --1038x137
    SPRITE_WIDTH, SPRITE_HEIGHT = 1038, 137

    QUAD_WIDTH = 173
    QUAD_HEIGHT = SPRITE_HEIGHT


    quads = {}

    for i = 1, naruto.animation.max_frames do
        quads[i] = love.graphics.newQuad(QUAD_WIDTH * (i - 1), 0, QUAD_WIDTH, QUAD_HEIGHT, SPRITE_WIDTH, SPRITE_HEIGHT)

    end

    naruto.dy = 0 --სიჩქარე
end

function naruto_update(dt)
    if love.keyboard.isDown('d') then
        naruto.animation.idle = false
        naruto.animation.direction = "right"
    elseif love.keyboard.isDown('a') then
        naruto.animation.idle = false
        naruto.animation.direction = "left"
    else
        naruto.animation.idle = true
        naruto.animation.frame = 1
    end
 
    if not naruto.animation.idle then
        naruto.animation.timer = naruto.animation.timer + dt

        if naruto.animation.timer > 0.2 then
            naruto.animation.timer = 0.1

            naruto.animation.frame = naruto.animation.frame + 1

            if naruto.animation.direction == "right" then
                naruto.x = naruto.x + naruto.animation.speed
            elseif naruto.animation.direction == "left" then
                naruto.x = naruto.x - naruto.animation.speed
            end

            if naruto.animation.frame > naruto.animation.max_frames then
                naruto.animation.frame = 1
            end
        end
    end

    if naruto.x < boundaryLeft then
        naruto.x = boundaryLeft
    elseif naruto.x > boundaryRight then
        naruto.x = boundaryRight
    end

    if naruto.y < boundaryTop then
        naruto.y = boundaryTop
    elseif naruto.y > boundaryBottom then
        naruto.y = boundaryBottom
    end

    naruto.dy = naruto.dy + GRAVITY * dt

    if love.keyboard.isDown('space') then --space რეაგირება
        naruto.dy = -40
    end

    naruto.y = naruto.y + naruto.dy
end

function naruto_draw()
    love.graphics.scale(0.5)

    if naruto.animation.direction == "right" then
        love.graphics.draw(naruto.sprite, quads[naruto.animation.frame], naruto.x, naruto.y)
    else 
        love.graphics.draw(naruto.sprite, quads[naruto.animation.frame], naruto.x, naruto.y, 0, -1, 1, QUAD_WIDTH, 0)
    end

end