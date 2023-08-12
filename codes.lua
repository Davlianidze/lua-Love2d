
----------------------------------------------------––––––

--ციკლი

a = x

while (10 > a) do
    print(a)
    a = a + 1
end

----------------------------------------------------------

--მაჩვენებს ციკლს 1–დან 10–მდე

condition = 1

while (10 >= condition) do
    print(condition)
    condition = condition + 1
end

----------------------------------------------------––––––

--მაჩვენებს 1000–დან რომელი რიცხვები იყოფა 7–ზე 

condition = 0

while (1000 > condition) do
    print(condition)
    condition = condition +7
end

--------------------------------------------------------

--ციკლი ოღონდ for–ით

for index = 7, 1000, 7 do
    print(index)
end

------------------------------------------------------–––––––

--თუ იგივე if ფუნქცია

if(2 == 3) then
    print("this is true")
elseif(5 > 2) then
    print("tu pirveli sworia mashin gamocndes es")
end

------------------------------------------------------------––––

--and და or

a = 1
answer = a == 1 and 1 or -2
print(answer)

--ეს კოდი იგივეა რაც if ფუნქცია, უბრალოდ შემოკლებული ვერსია

---------------------------------------------------------–––––––

--key და Table

favoriteGames = {
    ["lizi"] = "minecraft",
    ["daviti"] = "chess",
    ["basil"] = "war thunder",
    ["alex"] = "last of us"
}
print(favoriteGames["lizi"])

----------------------------------------------------------------

--Table-ში ვწერთ 5–ის ჯერად რიცხვებს

first = 1
last = 1000

number = {}

for i = first, last, 1 do
  if (i % 5 == 0) then
    table.insert(number, i)
  end  
end

for i, v in ipairs(number) do
  print(v)
end

------------------------------------------------------------------

--function 
function multiplesOfFive()
    for index = first, last, 1 then
    end
end

multiplesOfFive()

-----

function add(x, y)
    print(x + y)
end

add(18, 8)
add(12, 9)

------------------------------------------------------------------

--function ვწერთ 5–ის ჯერად რიცხვებს
function findMultipleOfFive()
    multiplesOfFive = {}

    first = 1
    last = 1000
    for number = first, last do
        if(numbver = % 5 == 0) then
            table.insert(multiplesOfFive, number)
        end
    end
end

findMultipleOfFive()

-------------------------------------------------------------------

--პატარა პროგრამა function–ით, რის დროსაც ანგარიშობს. 2+4+5+6+8+10=35

function calculatesum(first, last)

    sum = 0

    for number = first, last do
        
      if (number % 2 == 0) or (number % 5 == 0) then
        sum = sum + number
      end

    end

    return sum
  
  end
  
  sum = calculatesum(1, 10)
  print(sum)

  --გაუმჯობესებული

  function calculate(first, last)

    sum = 0
    number = {}
  
    for i = first, last do
        
      if (i % 2 == 0) or (i % 5 == 0) then
        table.insert(number, i)
        sum = sum + i
      end
    
    end
  
    return sum
  
  end
  
  sum = calculate(3, 20)
  for i, v in ipairs(number) do
    print(v)
  end
  print("=")
  print(sum)

  -------------------------------------------------------------

                                              --love2D
                                      -----------------------

  --ლუას გასაშვებად აუცილებელია ფაილი main.lua

  -----------------------------------------------------------

  --draw ფუნქცია ლავში რის შედეგადაც დაწერს

  function love.draw()
    love.graphics.print("Hello World", 400, 300)
end

--draw ფუნქცია ლავში რის შედეგადაც დახატავს ოთხკუთხედს

function love.draw()
  love.graphics.rectangle("fill", 0, 0, 100, 300) --fill არის შევსებული, line–მხოლოდ გარე ხაზი
end


------------------------------------------------------

--setFont წარწერის გადიდება

--------------------------------------------------

--მაუსზე რეაგირება

function love.mousepressed( x, y, button, istouch, presses )
  if button == 1 then
      score = score + 1 --აქ score არის მანამდე შემოტანილი ცვლადი იგივე ნოლი დაპრინტული
  end
end

--------------------------------------------------------

--ლავში ეკრანის გადიდება

  WINDOW_WIDTH = 1288
  WINDOW_HEIGHT = 728
  
  function love.load()
      love.window.setMode(WINDOW_WIDTH, WINDOW_HEIGHT, {
          fullscreen = false, 
          resizable = true --შეგვიძლია ასევე დავწეროთ false, მაგრამ ეკრანის გადიდება ხელით აღარ შეგვეძლება
      })
  end

----------------------------------------------------------

--keypressed ფუნქცია ამ შემთხვევაში escape როდესაც დავაწვებით თამაში გაითიშება

function love.keypressed(key)
  if key == 'escape' then
      love.event.quit()
  end
end

---------------------------------------------------------

 --დაპრინტავს ლავში ჯექსონს

--push–ის აღსათქმელად იწერება ესეთი კოდი
--push = require 'push'

WINDOW_WIDTH = 1288
WINDOW_WEIGHT = 728

function love.load()
    love.window.setMode(WINDOW_WIDTH, WINDOW_WEIGHT, {
        fullscreen = false,
        resizable = true
    })
end


function love.draw()
    love.graphics.printf(
        'jackson',
        0,
        WINDOW_WIDTH / 2 - 6,
        WINDOW_WEIGHT,
        'center')
end

---------------------------------------------------------------------

--player–ის მოძრაობა 

function love.load()
  player = {}
  player.x = 400
  player.y = 200
end

function love.update(dt)
  if love.keyboard.isDown("d") then
      player.x = player.x + 3
  end

  if love.keyboard.isDown("a") then
      player.x = player.x - 3
  end

  if love.keyboard.isDown("w") then
      player.y = player.y - 3
  end

  if love.keyboard.isDown("s") then
      player.y = player.y + 3
  end
end

function love.draw()
  love.graphics.circle('fill', player.x, player.y, 100)
end

---------------------------------------------------------------------

--ახალი Font–ის შემოტანა, pixel font-ის შემოტანა

VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243

function love.load()
    medium_font = love.graphics.newFont('8bit_font.ttf', 16)

    love.graphics.setFont(medium_font)
end

function love.draw()
    love.graphics.printf(
        'Hello Jacky',
        0,
        VIRTUAL_HEIGHT,
        VIRTUAL_WIDTH,
        'center')
end

--------------------------------------------------------------------

--sprite-ს შემოტანა და სხვა ნახატებისაც

local background = love.graphics.newImage("O.png")

function love.draw()

    --sprite შემოტანა 2
    love.graphics.draw(background)
end

--––––––––spriteScroll – backgroundScrool უკანა ფონის სქროლი

push = require "push"
Class = require "class"


local background = love.graphics.newImage("O.png")

local backgroundScroll = 0

local BACKGROUND_SCROLL_SPEED = 30
local LOOPING_POINT = 32
function love.load()
end

function love.update(dt)
    backgroundScroll = (backgroundScroll + BACKGROUND_SCROLL_SPEED * dt) % LOOPING_POINT --LOOPING_POINT არის 400PX ეკვივალენტი ანუ სურათის პიხელი როცა მეორდება
end

function love.draw()

    love.graphics.draw(background, -backgroundScroll, 0)

end

--------------BackgroundScrols + Character gravity

push = require "push"
Class = require "class"

require "Bird"



--sprites შემოტანა 1
local background = love.graphics.newImage("O.png")


local backgroundScroll = 0

local BACKGROUND_SCROLL_SPEED = 30
local LOOPING_POINT = 32
function love.load()
    bird = Bird()
end

function love.update(dt)
    backgroundScroll = (backgroundScroll + BACKGROUND_SCROLL_SPEED * dt) % LOOPING_POINT --LOOPING_POINT არის 400PX ეკვივალენტი ანუ სურათის პიხელი როცა მეორდება

    bird:update(dt)
end

function love.draw()

    --sprite შემოტანა 2
    love.graphics.draw(background, -backgroundScroll, 0)
    bird:render()



end

function keypressed()

end

-----Bird Class – კლასი

Bird = Class()

GRAVITY = 20

VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243


function Bird:init()
    self.image = love.graphics.newImage("O.png")
    
    self.width = self.image:getWidth()
    self.height = self.image:getHeight()

    

    self.x = VIRTUAL_WIDTH / 2 - self.height
    self.y = VIRTUAL_HEIGHT / 2 - self.width
    self.dy = 0 --სიჩქარე


end

function Bird:update(dt)
    self.dy = self.dy + GRAVITY * dt

    if love.keyboard.isDown('space') then --space რეაგირება
        self.dy = -5
    end

    self.y = self.y + self.dy
end

function Bird:render()
    love.graphics.draw(self.image, self.x, self.y)
end

-----------------------------------------------------------------------

--ფიზიკა

local physics = require("love.physics")

function love.load()
    -- Window setup code

    -- Create a physics world
    world = love.physics.newWorld(0, 9.81 * 64, true)

    -- Create player body
    player = {}
    player.body = love.physics.newBody(world, 100, 300, "dynamic") -- Parameters: world, x, y, body_type
    player.shape = love.physics.newRectangleShape(20, 40) -- Parameters: width, height
    player.fixture = love.physics.newFixture(player.body, player.shape) -- Parameters: body, shape
end



function love.update(dt)
    -- Update player position and other game logic

    -- Update physics world
    world:update(dt)
end
 
function love.draw()
    -- Render player and other game objects

    -- Render physics bodies
    love.graphics.setColor(1, 1, 1)  -- Set color to white (or any desired color)
    love.graphics.polygon("line", player.body:getWorldPoints(player.shape:getPoints())) -- Render player body

    -- Render other physics bodies
end

----------------------------------------------------------------------------------------------------------------

--ფიზიკა წინაღობა

local physics = require("love.physics")

function love.load()
    -- Window setup code

    -- Create a physics world
    world = love.physics.newWorld(0, 9.81 * 64, true) -- Parameters: gravity_x, gravity_y, allow_sleep
end

function love.load()
    -- Window setup code

    -- Create a physics world
    world = love.physics.newWorld(0, 9.81 * 64, true)

    -- Create a platform
    platform = {}
    platform.body = love.physics.newBody(world, love.graphics.getWidth() / 2, love.graphics.getHeight() - 20, "static") -- Parameters: world, x, y, body_type
    platform.shape = love.physics.newRectangleShape(0, 0, love.graphics.getWidth(), 40) -- Parameters: x, y, width, height
    platform.fixture = love.physics.newFixture(platform.body, platform.shape) -- Parameters: body, shape
end

function love.draw()
    -- Render player, obstacles, and other game objects

    -- Render platform
    love.graphics.setColor(1, 1, 1)  -- Set color to white (or any desired color)
    love.graphics.polygon("line", platform.body:getWorldPoints(platform.shape:getPoints())) -- Render platform body

    -- Render other physics bodies
end

function love.update(dt)
    -- Update player position and other game logic

    -- Update physics world
    world:update(dt)
end

------------------------------------------------------------------------------

--მოთამაშის ბორდერი რათა არ გადასცდეს მოცემულ წერტილს

local boundaryLeft = 0
local boundaryRight = love.graphics.getWidth()
local boundaryTop = 0
local boundaryBottom = love.graphics.getHeight()

function love.load()
    player1 = {}
    player1.x = 400
    player1.y = 200
  end

function love.update(dt)
    -- Update player position based on input or game logic

    -- Boundary checks for player
    if player1.x < boundaryLeft then
        player1.x = boundaryLeft
    elseif player1.x > boundaryRight then
        player1.x = boundaryRight
    end

    if player1.y < boundaryTop then
        player1.y = boundaryTop
    elseif player1.y > boundaryBottom then
        player1.y = boundaryBottom
    end
end

function love.draw()
    love.graphics.circle("fill", player1.x, player1.y, 20) -- Draw player 1
end

function love.keypressed(key)
    if key == "up" then
        player1.y = player1.y - 10 -- Adjust the movement speed as needed
    elseif key == "down" then
        player1.y = player1.y + 10 -- Adjust the movement speed as needed
    elseif key == "left" then
        player1.x = player1.x - 10 -- Adjust the movement speed as needed
    elseif key == "right" then
        player1.x = player1.x + 10 -- Adjust the movement speed as needed
    end
end

---------------------------------------------

--class-ის შესაქმნელად საჭიროა სპეციალური class.lua–ს ფალი
--class–ების აღსაქმელად საჭიროა კოდი

Class = require 'class'
require 'Player'

function love.load()
	Player = Player()
end

function love.update()
end

function love.draw()

end

--Player არის ახალი კლასი 

--------------------------------------------------------------------

--class ორი მოთამაშე

--main.lua

Class = require 'class'
require 'Player'

function love.load()
	Player1 = Player(100, 200)
	Player2 = Player(20, 40)
end
  
function love.update(dt)
	if love.keyboard.isDown("d") then
		Player1.x = Player1.x + 3
	end
  
	if love.keyboard.isDown("a") then
		Player1.x = Player1.x - 3
	end
  
	if love.keyboard.isDown("w") then
		Player1.y = Player1.y - 3
	end
  
	if love.keyboard.isDown("s") then
		Player1.y = Player1.y + 3
	end



	if love.keyboard.isDown("right") then
		Player2.x = Player2.x + 3
	end
  
	if love.keyboard.isDown("left") then
		Player2.x = Player2.x - 3
	end
  
	if love.keyboard.isDown("up") then
		Player2.y = Player2.y - 3
	end
  
	if love.keyboard.isDown("down") then
		Player2.y = Player2.y + 3
	end
end
  
function love.draw()
	Player1:render()
	Player2:render()
end

--player.lua ანუ კლასი

Player = Class()

function Player:init(x, y)
    self.x = x
	self.y = y

    self.width = 40
    self.height = 40
end

function Player:render()
    love.graphics.rectangle('fill', self.x, self.y, self.height, self.width)
end

-------------------------------------------------------------------------------------

--gameState–ს 

Class = require 'class'
require 'Player'

VIRTUAL_WIDTH = 432
VIRTUAL_HEIGHT = 243

gameState = "title"

function love.load()

	medium_font = love.graphics.newFont('8bit_font.ttf', 16)

    love.graphics.setFont(medium_font)

	Player1 = Player(100, 200)
	Player2 = Player(20, 40)
end
  
function love.keypressed(key)
    if gameState == "title" then
		if key == 'return' then
			gameState = "play"
		end
    end
end

function love.update(dt)
	if gameState == "play" then
		if love.keyboard.isDown("d") then
			Player1.x = Player1.x + 3
		end
	
		if love.keyboard.isDown("a") then
			Player1.x = Player1.x - 3
		end
	
		if love.keyboard.isDown("w") then
			Player1.y = Player1.y - 3
		end
	
		if love.keyboard.isDown("s") then
			Player1.y = Player1.y + 3
		end



		if love.keyboard.isDown("right") then
			Player2.x = Player2.x + 3
		end
	
		if love.keyboard.isDown("left") then
			Player2.x = Player2.x - 3
		end
	
		if love.keyboard.isDown("up") then
			Player2.y = Player2.y - 3
		end
	
		if love.keyboard.isDown("down") then
			Player2.y = Player2.y + 3
		end
	end
end
  
function love.draw()
	Player1:render()
	Player2:render()
	
	if gameState == "title" then
		love.graphics.printf(
			'welcome to my game',
			200,
			10,
			VIRTUAL_WIDTH,
			'center')
	end
end

------------------------------------------------------------------------------

--gamestate

function love.load()
end
function love.update()
	if love.keyboard.isDown("escape") then
		love.draw = stateTwo
	elseif love.keyboard.isDown('w') then
        love.draw = stateOne
    end
end
function love.draw()
	love.graphics.print("stateOne")
end

-- custom draw function
function stateTwo()
	love.graphics.print("stateTwo")
end

---------------------------------------------------------------------------------

--timer

local timer = 5
local duration = 0 -- Timer duration in seconds

function love.update(dt)
  timer = timer - dt -- Increment the timer by the elapsed time

  if timer <= duration then
    -- Timer has reached or exceeded the desired duration
    -- Perform actions or reset the timer as needed
    timer = 0 -- Reset the timer
    -- Perform actions here
  end
end

function love.draw()
  love.graphics.print("Timer: " .. math.floor(timer), 10, 10)
end

----------------------------------------------------------------------------------------

--animation 

SPRITE_X = 30
SPRITE_Y = 60


function love.load()
    love.graphics.setDefaultFilter('nearest', 'nearest')
    animation = newAnimation(love.graphics.newImage("oldHero.png"), 16, 18, 1)
end

function love.update(dt)
    if love.keyboard.isDown('d') then
        animation.currentTime = animation.currentTime + dt
        if animation.currentTime >= animation.duration then
            animation.currentTime = animation.currentTime - animation.duration
        else SPRITE_X = SPRITE_X + 2
        end
    end


    if love.keyboard.isDown('a') then
        animation.currentTime = animation.currentTime + dt
        if animation.currentTime >= animation.duration then
            animation.currentTime = animation.currentTime - animation.duration
        else SPRITE_X = SPRITE_X - 2
        end
    end

end

function love.draw()
    local spriteNum = math.floor(animation.currentTime / animation.duration * #animation.quads) + 1
    love.graphics.draw(animation.spriteSheet, animation.quads[spriteNum], SPRITE_X, SPRITE_Y, 0, 4)
end

function newAnimation(image, width, height, duration)
    local animation = {}
    animation.spriteSheet = image;
    animation.quads = {};

    for y = 0, image:getHeight() - height, height do
        for x = 0, image:getWidth() - width, width do
            table.insert(animation.quads, love.graphics.newQuad(x, y, width, height, image:getDimensions()))
        end
    end

    animation.duration = duration or 1
    animation.currentTime = 0

    return animation
end

---------------------------------------------------------------------------

--best animation 


function love.load()
    love.graphics.setDefaultFilter('nearest', 'nearest')
    _G.jack = {
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

    for i = 1, jack.animation.max_frames do
        quads[i] = love.graphics.newQuad(QUAD_WIDTH * (i - 1), 0, QUAD_WIDTH, QUAD_HEIGHT, SPRITE_WIDTH, SPRITE_HEIGHT)

    end
end

function love.update(dt)
    if love.keyboard.isDown('d') then
        jack.animation.idle = false
        jack.animation.direction = "right"
    elseif love.keyboard.isDown('a') then
        jack.animation.idle = false
        jack.animation.direction = "left"
    else
        jack.animation.idle = true
        jack.animation.frame = 1
    end
 
    if not jack.animation.idle then
        jack.animation.timer = jack.animation.timer + dt

        if jack.animation.timer > 0.2 then
            jack.animation.timer = 0.1

            jack.animation.frame = jack.animation.frame + 1

            if jack.animation.direction == "right" then
                jack.x = jack.x + jack.animation.speed
            elseif jack.animation.direction == "left" then
                jack.x = jack.x - jack.animation.speed
            end

            if jack.animation.frame > jack.animation.max_frames then
                jack.animation.frame = 1
            end
        end
    end
end

function love.draw()
    love.graphics.scale(0.5)

    if jack.animation.direction == "right" then
        love.graphics.draw(jack.sprite, quads[jack.animation.frame], jack.x, jack.y)
    else 
        love.graphics.draw(jack.sprite, quads[jack.animation.frame], jack.x, jack.y, 0, -1, 1, QUAD_WIDTH, 0)
    end

end

----------------------------------------------------------------------------------------------------

--Enemy მიყვება მოთამაშეს

function love.load()
    circle = {}
    circle.x = 150			-- This will render the circle at 150px to the right along the x-axis.
    circle.y = 150			-- This will render the circle at 150px below along the y-axis.
    circle.speed = 500		-- This will give the circle a movement speed of 500.

    rect = {}
    rect.x = 300			-- This will render the rectangle at 300px to the right along the x-axis.
    rect.y = 150			-- This will render the rectangle at 150px below along the y-axis.
    rect.w = 100			-- This will render the rectangle with a width of 100px.
    rect.h = 100			-- This will render the rectangle with a height of 100px.
    rect.speed = 100		-- This will give the rectangle a movement speed of 100.
end

function love.update(dt)
    if love.keyboard.isDown("d") then 				-- If player is holding down 'D',
	circle.x = circle.x + (circle.speed * dt)		-- Move circle to the right.
    end

    if love.keyboard.isDown("a") then 				-- If player is holding down 'A',
	circle.x = circle.x - (circle.speed * dt)		-- Move circle to the left.
    end

    if love.keyboard.isDown("w") then 				-- If player is holding down 'W',
	circle.y = circle.y - (circle.speed * dt)		-- Move circle upwards.
    end

    if love.keyboard.isDown("s") then 				-- If player is holding down 'S',
	circle.y = circle.y + (circle.speed * dt)		-- Move circle downwards.
    end
	
    if rect.x < circle.x then 					-- If the rect is to the left of the circle:
	rect.x = rect.x + (rect.speed * 2.5 * dt)		-- Rectangle moves towards the right.
    end
 
    if rect.x > circle.x then 					-- If the rect is to the right of the circle:
	rect.x = rect.x - (rect.speed * 2.5 * dt) 		-- Rectangle moves towards the left.
    end
 
    if rect.y < circle.y then 					-- If the rect is above the circle:
	rect.y = rect.y + (rect.speed * 2.5 * dt)		-- Rectangle moves downward.
    end
 
    if rect.y > circle.y then 					-- If the rect is below the circle:
	rect.y = rect.y - (rect.speed * 2.5 * dt)		-- Rectangle moves upward.
    end
end

function love.draw()
    love.graphics.setColor(255, 0, 0)
    love.graphics.circle("fill", circle.x, circle.y, 50)

    love.graphics.setColor(0, 255, 0)
    love.graphics.rectangle("fill", rect.x, rect.y, rect.w, rect.h)
end

-------------------------------------------------------------------------------------------

--Map-ების შექმნა

function love.load()
    map = {
        { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
        { 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1 },
        { 1, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1 },
        { 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 1 },
        { 1, 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1 },
        { 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1 },
        { 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 },
        { 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 },
        { 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1 },
        { 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1 },
        { 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1 },
        { 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1 },
        { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 }
    }
end
 
function love.draw()
    for y=1, #map do
        for x=1, #map[y] do
            if map[y][x] == 1 then
                love.graphics.rectangle("line", x * 32, y * 32, 32, 32)
            end
        end
    end
end

----------------------------------------------------------------------------------------------

--Snake–ის ნაირად მოძრაობა

local snakeX = 15
local snakeY = 15
local dirX = 0
local dirY = 0

up = false
down = false
left = false
right = false

interval = 20

function love.load()

end

function love.update()
	interval = interval - 1
	if interval < 0 then
		Move()
		interval = 10
	end
end

function love.draw()
  love.graphics.rectangle('fill', snakeX*30, snakeY*30, 50, 50)
end

function love.keypressed(key)
	if key == 'left' then
		left, right, up, down = true, false, false, false
	elseif key == 'right' then
		left, right, up, down = false, true, false, false
	elseif key == 'up' then
		left, right, up, down = false, false, true, false
	elseif key == 'down' then
		left, right, up, down = false, false, false, true
	end
end

function Move()
	if up then
		dirX, dirY = 0, -1
	elseif down then
		dirX, dirY = 0, 1 
	elseif left then 
		dirX, dirY = -1, 0
	elseif right then 
		dirX, dirY = 1, 0
	end

	snakeX = snakeX + dirX
	snakeY = snakeY + dirY
end

------------------------------------------------------------------------------------------------

--pacman-ის მოძრაობა

PlayState = Class{__includes = BaseState}

function PlayState:init()
    --Create our player
    player = {
        image = love.graphics.newImage("player.png"),
        x = 2,
        y = 2,
        speed = 100,
        direction = "right"
    }
end

function love.keypressed(key)
    if key == "up" then
        player.direction = "up"
    elseif key == "down" then
        player.direction = "down"
    elseif key == "left" then
        player.direction = "left"
    elseif key == "right" then
        player.direction = "right"
    end
end

function PlayState:update(dt)
    if player.direction == "up" then
        player.y = player.y - player.speed * dt
    elseif player.direction == "down" then
        player.y = player.y + player.speed * dt
    elseif player.direction == "left" then
        player.x = player.x - player.speed * dt
    elseif player.direction == "right" then
        player.x = player.x + player.speed * dt
    end

end

function PlayState:render()
    --Draw the player and multiple its tile position with the tile width and height
    love.graphics.draw(player.image, player.x, player.y)
end

-------------------------------------------------------------------------------------------------

--colliders

local lCollision = require("lCollision")

local x = 10
local y = 10

-- Initializing colliders
playerCollider = lCollision:new(x, y, 50, 50)
lavaCollider = lCollision:new(500, 200, 200, 200)
wallCollider = lCollision:new(300, 10, 300, 50)
jajaCollider = lCollision:new(100, 10, 200, 200)

function love.load()
end

function love.update(dt)
	-- Player movement
	if love.keyboard.isDown("left") then
		playerCollider.x = playerCollider.x - 3
	elseif love.keyboard.isDown("right") then
		playerCollider.x = playerCollider.x + 3
	end
	
	if love.keyboard.isDown("up") then
		playerCollider.y = playerCollider.y - 3
	elseif love.keyboard.isDown("down") then
		playerCollider.y = playerCollider.y + 3
	end
	
	-- Collision detection
	if playerCollider:collides(lavaCollider) then
		playerCollider.x = x
		playerCollider.y = y
	end

	playerCollider:separate(wallCollider)
	playerCollider:separate(jajaCollider)
end

function love.draw()
	-- Draw the player as a white square
	love.graphics.setColor(1, 1, 1, 1)
	playerCollider:draw()
	
	-- Draw lava as a red square
	love.graphics.setColor(1, 0, 0, 1)
	lavaCollider:draw()

	-- Draw a wall as a white square
	love.graphics.setColor(1, 1, 1, 1)
	wallCollider:draw()

	jajaCollider:draw()
end

--init.lua

-- lCollision.lua
-- https://github.com/notcl4y14/lCollision/blob/main/lCollision.lua

-- Thanks to darkfrei for the code fix!
-- https://love2d.org/forums/memberlist.php?mode=viewprofile&u=145963

local lCollision = {}
lCollision.__index = lCollision


local function checkCollision(x1,y1,w1,h1, x2,y2,w2,h2)
-- from https://love2d.org/wiki/BoundingBox.lua
	return x1 < x2+w2 and x2 < x1+w1 and y1 < y2+h2 and y2 < y1+h1
end


function lCollision:collides(collider)
	if checkCollision(self.x, self.y, self.width, self.height, collider.x, collider.y, collider.width, collider.height) then
		return true
	end
	return false
end


function lCollision:insideOf(collider)
	if checkCollision(
		self.x, self.y, self.width, self.height, 
		collider.x+self.width, collider.y+self.height, collider.width-2*self.width, collider.height-2*self.height
		) then
		return true
	end
	
	return false
end

function lCollision:onBorder(collider)
	if self:collides(collider) and not self:insideOf(collider) then
		return true
	end
	return false
end

function lCollision:separate(collider)
	if not checkCollision(self.x,self.y,self.width,self.height, collider.x,collider.y,collider.width,collider.height) then
		-- no collision: nothing to do
		return
	end
	
	-- (dx, dy) will be orthogonal separation vector
	local dx = collider.x - self.x
	local dy = collider.y - self.y
	if self.x + self.width / 2 < collider.x + collider.width / 2 then
		-- middle point of agent is more left than by the box
		dx = dx - self.width
	else
		dx = dx + collider.width
	end
	
	if self.y + self.height / 2 < collider.y + collider.height / 2 then
		-- middle point of agent is higher than by the box
		dy = dy - self.height
	else
		dy = dy + collider.height
	end
	
	-- making the separation vector orthogonal:
	if math.abs (dx) > math.abs (dy) then
		dx = 0 -- dx was longer than dy
	else
		dy = 0
	end
	
	-- moving the self
	self.x = self.x + dx
	self.y = self.y + dy
end


--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------

function lCollision:new(x, y, width, height)
	local collider = setmetatable({x=x, y=y, width=width, height=height}, self)
	return collider
end


function lCollision:draw()
	love.graphics.rectangle("line", self.x, self.y, self.width, self.height)
end


return lCollision

---------------------------------------------------------------------------------------------

--კუბის მოძრაობა ვერტიკალურად(შეგვიძლია Enemy–დაც გამოვიყენოთ)

enemy = Class{}

function enemy:init()
    self.x = 100
    self.y = 100
    self.speed = 100
    self.width = 15
    self.height = 15
    --self.image = love.graphics.newImage('enemy.png')     

    --self.width = self.image:getWidth()
    --self.height = self.image:getHeight()
end

function enemy:update(dt)
    self.x = self.x + self.speed * dt

    local window_width = love.graphics.getWidth()
    local window_height = love.graphics.getHeight()

    if self.x < 0 then
        self.x = 0
        self.speed = -self.speed
    elseif self.x + self.width > window_width then
        self.x = window_width - self.width
        self.speed = -self.speed
    end
    
end

function enemy:render()
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end

----------------------------------------------------------------------------------------------------

--კუბის მოძრაობა ––> ^ <–– 

player = {
    x = 0,
    y = 100,
}
local dir = "right"

function love.update(dt)
   if dir == "right" then
      player.x = player.x + 1
      if player.x >= 100 then
         dir = "up"
      end
   elseif dir == "up" then
      player.y = player.y - 1
      if player.y <= 0 then
         dir = "left"
      end
    elseif dir == 'left' then
        player.x = player.x - 1
        if player.x < 0 then
            dir = 'down'
        end
    elseif dir == 'down' then
        player.y = player.y + 1
        if player.y > 100 then
            dir = 'right'
        end
   end
end

function love.draw()
    love.graphics.rectangle('fill', player.x, player.y, 15, 15)
end

-------------------------------------------------------------------------

--Highscore

score = 0

function love.load()
    highScore = loadHighScore()
end

function love.update(dt)
    if love.keyboard.isDown('w') then
        score = score + 10
    end

    if score > highScore then
        highScore = score
    end
end

function love.keypressed(key) 
    if key == 'e' then
        saveHighScore()
        love.event.quit()
    end
end

function love.draw()
    love.graphics.print('Higscore: ' .. highScore, 10, 10)
end


function saveHighScore()
    love.filesystem.write('highscore.txt', highScore)
end

function loadHighScore()
    if love.filesystem.getInfo('highscore.txt') then
        local  contents, size = love.filesystem.read('highscore.txt')
        return tonumber(contents)
    else
        return 0
    end
end

-------------------------------------------------------------------------------------------------------