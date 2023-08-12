bullet = Class{}

function bullet:init()
    canShoot = true
    canShootTimerMax = 0.3
    canShootTimer = canShootTimerMax

    bullets = {} 

    bulletImg  = love.graphics.newImage('graphics/BatBullets.png')
end

function bullet:update(dt)
    canShootTimer = canShootTimer - (0.5 * dt)
    if canShootTimer < 0 then
      canShoot = true
    end
  
    if love.keyboard.isDown('space') and canShoot then
      newBullet = { x = Batman.x + (Batman.img:getWidth()/2), y = Batman.y, img = bulletImg }
  
      table.insert(bullets, newBullet)
  
      canShoot = false
      canShootTimer = canShootTimerMax
    end

    

  for i, bullet in ipairs(bullets) do
    bullet.y = bullet.y - (250 * dt)

    if bullet.y < 0 then 
      table.remove(bullets, i)
    end
  end
end

function bullet:render()
    for i, bullet in ipairs(bullets) do
        love.graphics.draw(bullet.img, bullet.x, bullet.y)
    end
end