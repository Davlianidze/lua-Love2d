naruto = {}

function naruto:load()
    love.graphics.setDefaultFilter('nearest', 'nearest')
    _G.naruto = {
        x = 0,
        y = 0,

        sprite = love.graphics.newImage('Naruto_Run_Right.png'),
        animation = {
            direction = "right",
            idle = true,
            frame = 1,
            max_frames = 6,
            speed = 50,
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
end

function naruto:update(dt)
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
end

function naruto:draw()
    love.graphics.scale(0.5)

    if naruto.animation.direction == "right" then
        love.graphics.draw(naruto.sprite, quads[naruto.animation.frame], naruto.x, naruto.y)
    else 
        love.graphics.draw(naruto.sprite, quads[naruto.animation.frame], naruto.x, naruto.y, 0, -1, 1, QUAD_WIDTH, 0)
    end

end