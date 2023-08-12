Map = Class{}

function Map:init()
    img = love.graphics.newImage("graphics/Block_Asset.png")

    B1 = love.graphics.newQuad(0, 0, 25, 25, img)
    B2 = love.graphics.newQuad(25, 0, 25, 25, img)
    B3 = love.graphics.newQuad(50, 0, 25, 25, img)
    B4 = love.graphics.newQuad(75, 0, 25, 25, img)
    B5 = love.graphics.newQuad(100, 0, 25, 25, img)
    B6 = love.graphics.newQuad(125, 0, 25, 25, img)
    B7 = love.graphics.newQuad(150, 0, 25, 25, img)
    B8 = love.graphics.newQuad(175, 0, 25, 25, img)
    B9 = love.graphics.newQuad(200, 0, 25, 25, img)
    B10 = love.graphics.newQuad(225, 0, 25, 25, img)
    B11 = love.graphics.newQuad(250, 0, 25, 25, img)
end

function Map:render()
    love.graphics.draw(img, B1, 0, 50)

    a = 25

    while (475 > a) do
        love.graphics.draw(img, B6, a, 50)
        a = a + 25
    end

    love.graphics.draw(img, B2, 475, 50)
    love.graphics.draw(img, B5, 0, 75)

    b = 75

    while (225 > b) do
        love.graphics.draw(img, B5, 0, b)
        b = b + 25
    end

    love.graphics.draw(img, B3, 0, 225)

    c = 25
    
    while (75 > c) do
        love.graphics.draw(img, B6, c, 225)
        c = c + 25
    end

    love.graphics.draw(img, B9, 75, 225)

    d = 75
    
    while (225 > d) do
        love.graphics.draw(img, B5, 475, d)
        d = d + 25
    end

    love.graphics.draw(img, B4, 475, 225)

    e = 425

    while (475 > e) do
        love.graphics.draw(img, B6, e, 225)
        e = e + 25
    end

    love.graphics.draw(img, B7, 400, 225)

    love.graphics.draw(img, B1, 50, 100)
    love.graphics.draw(img, B2, 75, 100)
    love.graphics.draw(img, B3, 50, 125)
    love.graphics.draw(img, B4, 75, 125)
    love.graphics.draw(img, B7, 50, 175)
    love.graphics.draw(img, B6, 75, 175)
    love.graphics.draw(img, B9, 100, 175)
    love.graphics.draw(img, B10, 125, 75)
    love.graphics.draw(img, B5, 125, 100)
    love.graphics.draw(img, B8, 125, 125)
    love.graphics.draw(img, B1, 175, 100)
    love.graphics.draw(img, B8, 175, 125)
    love.graphics.draw(img, B9, 200, 100)
    love.graphics.draw(img, B8, 250, 100)
    love.graphics.draw(img, B10, 250, 75)
    love.graphics.draw(img, B7, 300, 100)
    love.graphics.draw(img, B9, 325, 100)
    love.graphics.draw(img, B8, 375, 100)
    love.graphics.draw(img, B10, 375, 75)
    love.graphics.draw(img, B11, 425, 100)
    love.graphics.draw(img, B11, 450, 150)
    love.graphics.draw(img, B8, 400, 175)
    love.graphics.draw(img, B10, 400, 150)
    love.graphics.draw(img, B10, 350, 150)
    love.graphics.draw(img, B5, 350, 175)
    love.graphics.draw(img, B4, 350, 200)
    love.graphics.draw(img, B7, 325, 200)
    love.graphics.draw(img, B5, 275, 200)
    love.graphics.draw(img, B5, 275, 175)
    love.graphics.draw(img, B1, 275, 150)
    love.graphics.draw(img, B9, 300, 150)
    love.graphics.draw(img, B4, 275, 225)
    love.graphics.draw(img, B7, 250, 225)
    love.graphics.draw(img, B11, 200, 225)
    love.graphics.draw(img, B4, 150, 225)
    love.graphics.draw(img, B7, 125, 225)
    love.graphics.draw(img, B5, 150, 200)
    love.graphics.draw(img, B1, 150, 175)
    love.graphics.draw(img, B6, 175, 175)
    love.graphics.draw(img, B6, 200, 175)
    love.graphics.draw(img, B4, 225, 175)
    love.graphics.draw(img, B10, 225, 150)

    f = 375

    while (525 > f) do
        love.graphics.draw(img, B5, 0, f)
        f = f + 25
    end

    love.graphics.draw(img, B3, 0, 525)
    love.graphics.draw(img, B1, 0, 350)
    love.graphics.draw(img, B6, 25, 350)
    love.graphics.draw(img, B6, 50, 350)
    love.graphics.draw(img, B9, 75, 350)
    love.graphics.draw(img, B11, 125, 350)
    love.graphics.draw(img, B1, 100, 400)
    love.graphics.draw(img, B2, 125, 400)
    love.graphics.draw(img, B3, 100, 425)
    love.graphics.draw(img, B4, 125, 425)
    love.graphics.draw(img, B10, 50, 400)
    love.graphics.draw(img, B5, 50, 425)
    love.graphics.draw(img, B5, 50, 450)
    love.graphics.draw(img, B3, 50, 475)
    love.graphics.draw(img, B9, 75, 475)
    love.graphics.draw(img, B7, 125, 475)
    love.graphics.draw(img, B9, 150, 475)
    love.graphics.draw(img, B10, 200, 475)
    love.graphics.draw(img, B8, 200, 500)

    g = 25

    while (475 > g) do
        love.graphics.draw(img, B6, g, 525)
        g = g + 25
    end

    love.graphics.draw(img, B4, 475, 525)

    h = 375

    while (525 > h) do
        love.graphics.draw(img, B5, 475, h)
        h = h + 25
    end

    love.graphics.draw(img, B2, 475, 350)
    love.graphics.draw(img, B6, 450, 350)
    love.graphics.draw(img, B6, 425, 350)
    love.graphics.draw(img, B7, 400, 350)
    love.graphics.draw(img, B9, 350, 350)
    love.graphics.draw(img, B7, 325, 350)
    love.graphics.draw(img, B11, 425, 400)
    love.graphics.draw(img, B11, 375, 400)
    love.graphics.draw(img, B9, 350, 450)
    love.graphics.draw(img, B3, 325, 450)
    love.graphics.draw(img, B5, 325, 425)
    love.graphics.draw(img, B10, 325, 400)
    love.graphics.draw(img, B11, 350, 500)
    love.graphics.draw(img, B2, 425, 450)
    love.graphics.draw(img, B1, 400, 450)
    love.graphics.draw(img, B4, 425, 475)
    love.graphics.draw(img, B3, 400, 475)
    love.graphics.draw(img, B4, 275, 475)
    love.graphics.draw(img, B3, 250, 475)
    love.graphics.draw(img, B5, 250, 450)
    love.graphics.draw(img, B2, 250, 425)
    love.graphics.draw(img, B6, 225, 425)
    love.graphics.draw(img, B6, 200, 425)
    love.graphics.draw(img, B3, 175, 425)
    love.graphics.draw(img, B1, 175, 400)
    love.graphics.draw(img, B6, 200, 400)
    love.graphics.draw(img, B6, 225, 400)
    love.graphics.draw(img, B6, 250, 400)
    love.graphics.draw(img, B2, 275, 400)
    love.graphics.draw(img, B5, 275, 425)
    love.graphics.draw(img, B5, 275, 450)
    love.graphics.draw(img, B2, 275, 275)
    love.graphics.draw(img, B5, 275, 300)
    love.graphics.draw(img, B5, 275, 325)
    love.graphics.draw(img, B4, 275, 350)
    love.graphics.draw(img, B6, 250, 350)
    love.graphics.draw(img, B6, 225, 350)
    love.graphics.draw(img, B6, 200, 350)
    love.graphics.draw(img, B3, 175, 350)
    love.graphics.draw(img, B5, 175, 325)
    love.graphics.draw(img, B5, 175, 300)
    love.graphics.draw(img, B1, 175, 275)
    love.graphics.draw(img, B6, 200, 275)
    love.graphics.draw(img, B6, 225, 275)
    love.graphics.draw(img, B6, 250, 275)
end
