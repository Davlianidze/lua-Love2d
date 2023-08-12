Brick = Class{}

function Brick:init(x, y, skin)
	self.x = x
	self.y = y
	
	self.width = 32
	self.height = 16
	
	self.skin = skin
end

function Brick:render()
	love.graphics.draw(textures['bricks'], quads['bricks'][self.skin * 3 - 2], self.x, self.y)
end
