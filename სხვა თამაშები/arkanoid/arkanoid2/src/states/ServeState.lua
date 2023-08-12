ServeState = Class{__includes = BaseState}

function ServeState:enter(params)
	self.paused = false

	self.paddle = params.paddle
	self.health = params.health
	self.score = params.score
	
	self.ball = Ball(1)
end

function ServeState:update(dt)
	
	
	self.paddle:update(dt)
	
	self.ball.x = self.paddle.x + (self.paddle.width / 2) - 4
	self.ball.y = self.paddle.y - 8
end

function ServeState:render()
	self.paddle:render()
	self.ball:render()
end
