Ball = Class{}

function Ball:init(x, y, skin)
	self.x = x
	self.y = y
	
	self.width = 8
	self.height = 8
	
	self.skin = skin
end

function Ball:render()
	love.graphics.draw(textures['balls'], quads['balls'][self.skin], self.x, self.y)
end
