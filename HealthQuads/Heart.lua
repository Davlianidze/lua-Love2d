Heart = Class{}

function Heart:init(x, y, skin)
	self.x = x
	self.y = y
	
	self.width = 8
	self.height = 8
	
	self.skin = skin
end

function Heart:render()
	love.graphics.draw(textures['heart'], quads['heart'][self.skin], self.x, self.y)
end
