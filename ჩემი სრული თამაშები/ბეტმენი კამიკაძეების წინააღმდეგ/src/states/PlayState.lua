PlayState = Class{__includes = BaseState}

isAlive = true
score = 0

function PlayState:enter(params)
	self.Batman = params.Batman
	self.enemy = params.enemy
	self.bullet = params.bullet
    self.score = params.score
    self.highscores = params.highscores
end

function PlayState:init()
	Batman:init()
	enemy:init()
	bullet:init()
end

function PlayState:update(dt)
	Batman:update(dt)
	enemy:update(dt)
	bullet:update(dt)
end
	
function PlayState:render()
	enemy:render()
	bullet:render()
	renderHealth(health)

	if isAlive then
		love.graphics.draw(Batman.img, Batman.x, Batman.y)
	  else
			health = health - 1
			
			if not (health == 0) then
			
				stateMachine:change('play', {
			highscores = loadHighscores(),
			reset(),
			health = 3
				})
				
				goto continue
			end
			
			stateMachine:change('end', {
		  score = score,
		  highscores = loadHighscores()
			})
				
			
			::continue::
			
	  end
	  love.graphics.print("qulebi:", 10, 10)
	  love.graphics.print(tostring(score), 95, 10)
	
end

function reset()
    bullets = {}
    enemies = {}

    canShootTimer = canShootTimerMax
    createEnemyTimer = createEnemyTimerMax

    Batman.x = 200
    Batman.y = 400

    score = score
    isAlive = true
end
