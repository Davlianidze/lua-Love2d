
coins = {}


function spawnCoin(x, y)
        coin = world:newRectangleCollider(x, y, 64, 64, {collision_class = "Coin"})
        coin:setType('static')
        coin.animation = animations.coin
        table.insert(coins, coin)
end

function coinUpdate(dt)
    for i, c in ipairs(coins) do
        c.animation:update(dt)
    end
end

function coinDraw()
    if coin.body then
        for i,c in ipairs(coins) do
            local cx, cy = coin:getPosition()
            c.animation:draw(sprites.coin, cx, cy, nil, .25, .25, 0, 0)
        end
    end
end