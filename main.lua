-- Title: AnimatingImages
-- Name: Joelle Ishimwe
-- Course: ICS2O
-- This program displays 3 animated images in diffrent direction, with some coloured text and a background.
-----------------------------------------------------------------------------------------

-- create sound
local music = audio.loadSound ("Sounds/sound.mp3")
local musicChannel 
music = audio.play(music)
-----------------------------------------------------------------------------------------


-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--background image with width and height
local backgroundImage = display.newImageRect("Images/images.png", 2048, 1536)
-----------------------------------------------------------------------------------------

-- create a text variable
local textObject 

-- set the display for text 
textObject = display.newText ( "Animating Images", 500, 400, nil, 90 )

-- set the texts colour
textObject:setTextColor ( 100/255, 18/255, 190/255 )
-----------------------------------------------------------------------------------------

-- global variables
scrollSpeed = 10

-- characheter image with width and height
local heart = display.newImageRect("Images/heart.png", 200, 200)

-- set the image to be transparent
heart.alpha = 8

--set the initial x and y position of heart
heart.x = 890
heart.y = 200

-- Function: MoveHeart
-- Input: this function accepts an event listener
-- Output: none
-- Description: this function adds the scroll speed to the x-value of the heart
local function MoveHeart(event)
	
	-- add the scroll speed to the x-value of the heart
	heart.x = heart.x - scrollSpeed
	
	-- change the transparency of the heart every time is moves so that it fades out
	heart.alpha = heart.alpha - 0.01
end

-- MoveHeart will be called over and over again
Runtime:addEventListener("enterFrame", MoveHeart)


-----------------------------------------------------------------------------------------

-- global variables
scrollSpeed1 = 5

-- characheter image with width and height
local snake = display.newImageRect("Images/snake.png", 200, 200)
-- set the image to be transparent
snake.alpha = 8

--set the initial x and y position of snake
snake.x = 130
snake.y = 550

-- Function: MoveMinus
-- Input: this function accepts an event listener
-- Output: none
-- Description: this function adds the scroll speed to the x-value of the snake
local function MoveSnake(event)
	
	-- add the scroll speed to the x-value of the snake
	snake.x = snake.x + scrollSpeed1
	
	-- change the transparency of the snake every time is moves so that it fades out

	 if (snake.x > 900) or (snake.x < 120) then
		-- change the sign of the scroll speed
		snake.x = snake.x - scrollSpeed1
		snake.y = snake.y + scrollSpeed1
	 end 


end

-- MoveHeart will be called over and over again
Runtime:addEventListener("enterFrame", MoveSnake)
-----------------------------------------------------------------------------------------

-- global variables
scrollSpeed2 = 5

-- characheter image with width and height
local star = display.newImageRect("Images/star.png", 200, 200)

-- set the image to be transparent
star.alpha = 1

--set the initial x and y position of star
star.x = 520
star.y = 400

-- Function: MoveStar
-- Input: this function accepts an event listener
-- Output: none
-- Description: this function adds the scroll speed to the x-value of the star
local function MoveStar(event)

	-- rotate the star 40 degrees again and again
	star:rotate(10)

	-- add the scroll speed to the x-value of the star
	star.y = star.y - scrollSpeed2
	
	-- change the transparency of the star every time is moves so that it fades out
	star.alpha = star.alpha + 0.01
end

-- MoveHeart will be called over and over again
Runtime:addEventListener("enterFrame", MoveStar)
-----------------------------------------------------------------------------------------

-- global variables
scrollSpeed3 = -10

-- characheter image with width and height
local plane = display.newImageRect("Images/plane.png", 200, 200)

-- set the image to be transparent
plane.alpha = 8

--set the initial x and y position of plane
plane.x = 50
plane.y = 700

-- Function: MovePlane
-- Input: this function accepts an event listener
-- Output: none
-- Description: this function adds the scroll speed to the x-value of the plane
local function MovePlane(event)
	
	-- add the scroll speed to the x-value and to the y-value of the plane
	plane.x = plane.x - scrollSpeed3
	plane.y = plane.y + scrollSpeed3


end

-- MoveHeart will be called over and over again
Runtime:addEventListener("enterFrame", MovePlane)

-----------------------------------------------------------------------------------------

-- set the scroll speed of the circle
scrollSpeed4 = 4

-- character image with width and height
local circle = display.newImageRect("Images/circle.png", 200, 200)

-- set the initial x and y position of circle
circle.x = 520
circle.y = 390

-- make the circle visible
circle.alpha = 1

-- change the direction of the circle
circle:scale(-1,1)

-- Function: MovieCircle
-- Input: this function accepts an event listener
-- Output: none 
-- Description: This function adds the scroll speed to the x-value of the circle
local function MoveCircle(event)
	-- add the scroll speed to the x-value of the circle
	circle.y = circle.y - scrollSpeed3

	-- change the transparency of the circle everytime it moves so that it fades out 
	circle.alpha = circle.alpha - 0.001

	-- make the circle grow 
	circle.width = circle.width + scrollSpeed4
	circle.height = circle.height + scrollSpeed4
end 

-- MoveCircle will be called over and over again
Runtime:addEventListener("enterFrame", MoveCircle)

































