Batman = Class{}


function Batman:init(arg)
  self.x = 200
  self.y = 400
  self.speed = 150
  self.img = love.graphics.newImage('graphics/Batman.png')
end

function Batman:update(dt)
  if love.keyboard.isDown('left','a') then
    if self.x > 0 then 
      self.x = self.x - (self.speed*dt)
    end
  end
  
  if love.keyboard.isDown('right','d') then
    if self.x < (love.graphics.getWidth() - self.img:getWidth()) then
      self.x = self.x + (self.speed*dt)
    end
  end

  if love.keyboard.isDown('up', 'w') then
    if self.y > (love.graphics.getHeight() / 2) then
      self.y = self.y - (self.speed*dt)
    end
  end
  
  if love.keyboard.isDown('down', 's') then
    if self.y < (love.graphics.getHeight() - 55) then
      self.y = self.y + (self.speed*dt)
    end
  end

end