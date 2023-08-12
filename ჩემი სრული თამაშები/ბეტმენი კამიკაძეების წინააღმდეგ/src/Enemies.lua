enemy = Class{}

function enemy:init()
  createEnemyTimerMax = 0.4
  createEnemyTimer = createEnemyTimerMax
    
  enemies = {}
    
  enemyImg   = love.graphics.newImage('graphics/Enemy.png')
end

function enemy:update(dt)
    createEnemyTimer = createEnemyTimer - (1 * dt)
    if createEnemyTimer < 0 then
      createEnemyTimer = createEnemyTimerMax
  
      randomNumber = math.random(80, love.graphics.getWidth() - 80)
      newEnemy = { x = randomNumber, y = -10, img = enemyImg }
      table.insert(enemies, newEnemy)
    end
  
    for i, enemy in ipairs(enemies) do
      enemy.y = enemy.y + (200 * dt)
  
      if enemy.y > 620 then 
        table.remove(enemies, i)
      end
    end

    for i, enemy in ipairs(enemies) do
      for j, bullet in ipairs(bullets) do
        if CheckCollision(enemy.x, enemy.y, enemy.img:getWidth(), enemy.img:getHeight(), bullet.x, bullet.y, bullet.img:getWidth(), bullet.img:getHeight()) then
          table.remove(bullets, j)
          table.remove(enemies, i)
          score = score + 20
          sounds['hit']:play()
        end
      end
  
      if CheckCollision(enemy.x, enemy.y, enemy.img:getWidth(), enemy.img:getHeight(), Batman.x, Batman.y, Batman.img:getWidth(), Batman.img:getHeight())
      and isAlive then
        table.remove(enemies, i)
        isAlive = false
        sounds['hurt']:play()
      end
    end

    if score == 500 then
      createEnemyTimerMax = 0.2
    end
end

function enemy:render()
  for i, enemy in ipairs(enemies) do
    love.graphics.draw(enemy.img, enemy.x, enemy.y)
  end
end

function CheckCollision(x1,y1,w1,h1, x2,y2,w2,h2)
  return x1 < x2+w2 and
         x2 < x1+w1 and
         y1 < y2+h2 and
         y2 < y1+h1
end 