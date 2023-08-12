GhostGreen = Class{}

function GhostGreen:init()
    self.x = 250
    self.y = 310
    self.w = 15
    self.h = 15
    self.speed = 2.5
    GDir = 'Gup1'
end

function GhostGreen:update(dt)
    if timer > 5 then 
        GhostGreenMovement()
    end
end

function GhostGreenMovement()
    if GDir == 'Gup1' then
        GhostGreenCollider.y = GhostGreenCollider.y - GhostGreen.speed
        if GhostGreenCollider.y < 260 then
            GDir = 'GRight16'
        end
    elseif GDir == 'GDown1' then
        GhostGreenCollider.y = GhostGreenCollider.y + GhostGreen.speed
        if GhostGreenCollider.y > 330 then
            GDir = 'GRight2'
        end
    elseif GDir == 'GRight2' then
        GhostGreenCollider.x = GhostGreenCollider.x + GhostGreen.speed
        if GhostGreenCollider.x > 380 then
            GDir = 'GDown2'
        end
    elseif GDir == 'GDown2' then
        GhostGreenCollider.y = GhostGreenCollider.y + GhostGreen.speed
        if GhostGreenCollider.y > 380 then
            GDir = 'GRight3'
        end
    elseif GDir == 'GRight3' then
        GhostGreenCollider.x = GhostGreenCollider.x + GhostGreen.speed
        if GhostGreenCollider.x > 450 then
            GDir = 'GDown3'
        end
    elseif GDir == 'GDown3' then
        GhostGreenCollider.y = GhostGreenCollider.y + GhostGreen.speed
        if GhostGreenCollider.y > 505 then
            GDir = 'GLeft1'
        end
    elseif GDir == 'GLeft1' then
        GhostGreenCollider.x = GhostGreenCollider.x - GhostGreen.speed
        if GhostGreenCollider.x < 385 then
            GDir = 'GUp1'
        end
    elseif GDir == 'GUp1' then
        GhostGreenCollider.y = GhostGreenCollider.y - GhostGreen.speed
        if GhostGreenCollider.y < 435 then
            GDir = 'GRight4'
        end
    elseif GDir == 'GRight4' then
        GhostGreenCollider.x = GhostGreenCollider.x + GhostGreen.speed
        if GhostGreenCollider.x > 430 then
            GDir = 'GLeft2' 
        end
    elseif GDir == 'GLeft2' then
        GhostGreenCollider.x = GhostGreenCollider.x - GhostGreen.speed
        if GhostGreenCollider.x < 405 then
            GDir = 'GUp2'
        end
    elseif GDir == 'GUp2' then
        GhostGreenCollider.y = GhostGreenCollider.y - GhostGreen.speed
        if GhostGreenCollider.y < 405 then
            GDir = 'GDown4'
        end
    elseif GDir == 'GDown4' then
        GhostGreenCollider.y = GhostGreenCollider.y + GhostGreen.speed
        if GhostGreenCollider.y > 430 then
            GDir = 'GLeft3'
        end
    elseif GDir == 'GLeft3' then
        GhostGreenCollider.x = GhostGreenCollider.x - GhostGreen.speed
        if GhostGreenCollider.x < 355 then
            GDir = 'GUp3' 
        end
    elseif GDir == 'GUp3' then
        GhostGreenCollider.y = GhostGreenCollider.y - GhostGreen.speed
        if GhostGreenCollider.y < 380 then
            GDir = 'GLeft4' 
        end
    elseif GDir == 'GLeft4' then
        GhostGreenCollider.x = GhostGreenCollider.x - GhostGreen.speed
        if GhostGreenCollider.x < 155 then
            GDir = 'GDown5'
        end 
    elseif GDir == 'GDown5' then
        GhostGreenCollider.y = GhostGreenCollider.y + GhostGreen.speed
        if GhostGreenCollider.y > 450 then
            GDir = 'GRight5'
        end
    elseif GDir == 'GRight5' then
        GhostGreenCollider.x = GhostGreenCollider.x + GhostGreen.speed
        if GhostGreenCollider.x > 230 then
            GDir = 'GDown6' 
        end
    elseif GDir == 'GDown6' then
        GhostGreenCollider.y = GhostGreenCollider.y + GhostGreen.speed
        if GhostGreenCollider.y > 500 then
            GDir = 'GRight6'
        end
    elseif GDir == 'GRight6' then
        GhostGreenCollider.x = GhostGreenCollider.x + GhostGreen.speed
        if GhostGreenCollider.x > 330 then
            GDir = 'GUp4'
        end
    elseif GDir == 'GUp4' then
        GhostGreenCollider.y = GhostGreenCollider.y - GhostGreen.speed
        if GhostGreenCollider.y < 485 then
            GDir = 'GRight7'
        end
    elseif GDir == 'GRight7' then
        GhostGreenCollider.x = GhostGreenCollider.x + GhostGreen.speed
        if GhostGreenCollider.x > 370 then
            GDir = 'GLeft5'
        end
    elseif GDir == 'GLeft5' then
        GhostGreenCollider.x = GhostGreenCollider.x - GhostGreen.speed
        if GhostGreenCollider.x < 310 then
            GDir = 'GUp5' 
        end
    elseif GDir == 'GUp5' then
        GhostGreenCollider.y = GhostGreenCollider.y - GhostGreen.speed
        if GhostGreenCollider.y < 185 then
            GDir = 'GRight8'
        end
    elseif GDir == 'GRight8' then
        GhostGreenCollider.x = GhostGreenCollider.x + GhostGreen.speed
        if GhostGreenCollider.x > 325 then
            GDir = 'GUp6'
        end
    elseif GDir == 'GUp6' then
        GhostGreenCollider.y = GhostGreenCollider.y - GhostGreen.speed
        if GhostGreenCollider.y < 135 then
            GDir = 'GRight9' 
        end
    elseif GDir == 'GRight9' then
        GhostGreenCollider.x = GhostGreenCollider.x + GhostGreen.speed
        if GhostGreenCollider.x > 375 then
            GDir = 'GDown7'
        end
    elseif GDir == 'GDown7' then
        GhostGreenCollider.y = GhostGreenCollider.y + GhostGreen.speed
        if GhostGreenCollider.y > 250 then
            GDir = 'GLeft6'
        end
    elseif GDir == 'GLeft6' then
        GhostGreenCollider.x = GhostGreenCollider.x - GhostGreen.speed
        if GhostGreenCollider.x < 185 then
            GDir = 'GUp7'
        end
    elseif GDir == 'GUp7' then
        GhostGreenCollider.y = GhostGreenCollider.y - GhostGreen.speed
        if GhostGreenCollider.y < 210 then
            GDir = 'GRight10'
        end
    elseif GDir == 'GRight10' then
        GhostGreenCollider.x = GhostGreenCollider.x + GhostGreen.speed
        if GhostGreenCollider.x > 225 then
            GDir = 'GDown8'
        end
    elseif GDir == 'GDown8' then
        GhostGreenCollider.y = GhostGreenCollider.y + GhostGreen.speed
        if GhostGreenCollider.y > 250 then
            GDir = 'GLeft7'
        end
    elseif GDir == 'GLeft7' then
        GhostGreenCollider.x = GhostGreenCollider.x - GhostGreen.speed
        if GhostGreenCollider.x < 110 then
            GDir = 'GUp8'
        end
    elseif GDir == 'GUp8' then
        GhostGreenCollider.y = GhostGreenCollider.y - GhostGreen.speed
        if GhostGreenCollider.y < 215 then
            GDir = 'GDown9'
        end
    elseif GDir == 'GDown9' then
        GhostGreenCollider.y = GhostGreenCollider.y + GhostGreen.speed
        if GhostGreenCollider.y > 375 then
            GDir = 'GLeft8'
        end
    elseif GDir == 'GLeft8' then
        GhostGreenCollider.x = GhostGreenCollider.x - GhostGreen.speed
        if GhostGreenCollider.x < 85 then
            GDir = 'GDown10'
        end
    elseif GDir == 'GDown10' then
        GhostGreenCollider.y = GhostGreenCollider.y + GhostGreen.speed
        if GhostGreenCollider.y > 450 then
            GDir = 'GRight11'
        end
    elseif GDir == 'GRight11' then
        GhostGreenCollider.x = GhostGreenCollider.x + GhostGreen.speed
        if GhostGreenCollider.x > 150 then
            GDir = 'GUp9'
        end
    elseif GDir == 'GUp9' then
        GhostGreenCollider.y = GhostGreenCollider.y - GhostGreen.speed
        if GhostGreenCollider.y < 285 then
            GDir = 'GLeft9'
        end
    elseif GDir == 'GLeft9' then
        GhostGreenCollider.x = GhostGreenCollider.x - GhostGreen.speed
        if GhostGreenCollider.x < 10 then
            GDir = 'GUp10'
        end
    elseif GDir == 'GUp10' then
        GhostGreenCollider.y = GhostGreenCollider.y - GhostGreen.speed
        if GhostGreenCollider.y < 260 then
            GDir = 'GRight12'
        end
    elseif GDir == 'GRight12' then
        GhostGreenCollider.x = GhostGreenCollider.x + GhostGreen.speed
        if GhostGreenCollider.x > 75 then
            GDir = 'GDown11'
        end
    elseif GDir == 'GDown11' then
        GhostGreenCollider.y = GhostGreenCollider.y + GhostGreen.speed
        if GhostGreenCollider.y > 325 then
            GDir = 'GLeft10'
        end
    elseif GDir == 'GLeft10' then
        GhostGreenCollider.x = GhostGreenCollider.x - GhostGreen.speed
        if GhostGreenCollider.x < 10 then
            GDir = 'GUp11'
        end
    elseif GDir == 'GUp11' then
        GhostGreenCollider.y = GhostGreenCollider.y - GhostGreen.speed
        if GhostGreenCollider.y < 310 then
            GDir = 'GRight13'
        end
    elseif GDir == 'GRight13' then
        GhostGreenCollider.x = GhostGreenCollider.x + GhostGreen.speed
        if GhostGreenCollider.x > 150 then
            GDir = 'GDown12'
        end
    elseif GDir == 'GDown12' then
        GhostGreenCollider.y = GhostGreenCollider.y + GhostGreen.speed
        if GhostGreenCollider.y > 375 then
            GDir = 'GLeft11'
        end
    elseif GDir == 'GLeft11' then
        GhostGreenCollider.x = GhostGreenCollider.x - GhostGreen.speed
        if GhostGreenCollider.x < 35 then
            GDir = 'GDown13'
        end
    elseif GDir == 'GDown13' then
        GhostGreenCollider.y = GhostGreenCollider.y + GhostGreen.speed
        if GhostGreenCollider.y > 500 then
            GDir = 'GRight14'
        end
    elseif GDir == 'GRight14' then
        GhostGreenCollider.x = GhostGreenCollider.x + GhostGreen.speed
        if GhostGreenCollider.x > 175 then
            GDir = 'GUp12'
        end
    elseif GDir == 'GUp12' then
        GhostGreenCollider.y = GhostGreenCollider.y - GhostGreen.speed
        if GhostGreenCollider.y < 460 then
            GDir = 'GLeft12'
        end
    elseif GDir == 'GLeft12' then
        GhostGreenCollider.x = GhostGreenCollider.x - GhostGreen.speed
        if GhostGreenCollider.x < 160 then
            GDir = 'GUp13'
        end
    elseif GDir == 'GUp13' then
        GhostGreenCollider.y = GhostGreenCollider.y - GhostGreen.speed
        if GhostGreenCollider.y < 260 then
            GDir = 'GRight15'
        end
    elseif GDir == 'GRight15' then
        GhostGreenCollider.x = GhostGreenCollider.x + GhostGreen.speed
        if GhostGreenCollider.x > 475 then
            GDir = 'GDown14'
        end
    elseif GDir == 'GDown14' then
        GhostGreenCollider.y = GhostGreenCollider.y + GhostGreen.speed
        if GhostGreenCollider.y > 275 then
            GDir = 'GLeft13'
        end
    elseif GDir == 'GLeft13' then
        GhostGreenCollider.x = GhostGreenCollider.x - GhostGreen.speed
        if GhostGreenCollider.x < 335 then
            GDir = 'GUp14'
        end
    elseif GDir == 'GUp14' then
        GhostGreenCollider.y = GhostGreenCollider.y - GhostGreen.speed
        if GhostGreenCollider.y < 235 then
            GDir = 'GRight16'
        end
    elseif GDir == 'GRight16' then
        GhostGreenCollider.x = GhostGreenCollider.x + GhostGreen.speed
        if GhostGreenCollider.x > 375 then
            GDir = 'GUp15'
        end
    elseif GDir == 'GUp15' then
        GhostGreenCollider.y = GhostGreenCollider.y - GhostGreen.speed
        if GhostGreenCollider.y < 210 then
            GDir = 'GRight17'
        end
    elseif GDir == 'GRight17' then
        GhostGreenCollider.x = GhostGreenCollider.x + GhostGreen.speed
        if GhostGreenCollider.x > 450 then
            GDir = 'GUp16' 
        end
    elseif GDir == 'GUp16' then
        GhostGreenCollider.y = GhostGreenCollider.y - GhostGreen.speed
        if GhostGreenCollider.y < 185 then
            GDir = 'GLeft14'
        end
    elseif GDir == 'GLeft14' then
        GhostGreenCollider.x = GhostGreenCollider.x - GhostGreen.speed
        if GhostGreenCollider.x < 435 then
            GDir = 'GUp17'
        end
    elseif GDir == 'GUp17' then
        GhostGreenCollider.y = GhostGreenCollider.y - GhostGreen.speed 
        if GhostGreenCollider.y < 135 then
            GDir = 'GRight18'
        end
    elseif GDir == 'GRight18' then
        GhostGreenCollider.x = GhostGreenCollider.x + GhostGreen.speed
        if GhostGreenCollider.x > 450 then
            GDir = 'GUp18'
        end
    elseif GDir == 'GUp18' then
        GhostGreenCollider.y = GhostGreenCollider.y - GhostGreen.speed
        if GhostGreenCollider.y < 85 then
            GDir = 'GLeft15'
        end
    elseif GDir == 'GLeft15' then
        GhostGreenCollider.x = GhostGreenCollider.x - GhostGreen.speed
        if GhostGreenCollider.x < 410 then
            GDir = 'GDown15'
        end
    elseif GDir == 'GDown15' then
        GhostGreenCollider.y = GhostGreenCollider.y + GhostGreen.speed
        if GhostGreenCollider.y > 125 then
            GDir = 'GLeft16'
        end
    elseif GDir == 'GLeft16' then
        GhostGreenCollider.x = GhostGreenCollider.x - GhostGreen.speed
        if GhostGreenCollider.x < 210 then
            GDir = 'GDown16'
        end
    elseif GDir == 'GDown16' then
        GhostGreenCollider.y = GhostGreenCollider.y + GhostGreen.speed
        if GhostGreenCollider.y > 150 then
            GDir = 'GLeft17'
        end
    elseif GDir == 'GLeft17' then
        GhostGreenCollider.x = GhostGreenCollider.x - GhostGreen.speed
        if GhostGreenCollider.x < 35 then
            GDir = 'GUp19'
        end
    elseif GDir == 'GUp19' then
        GhostGreenCollider.y = GhostGreenCollider.y - GhostGreen.speed
        if GhostGreenCollider.y < 85 then
            GDir = 'GRight19'
        end
    elseif GDir == 'GRight19' then
        GhostGreenCollider.x = GhostGreenCollider.x + GhostGreen.speed
        if GhostGreenCollider.x > 100 then
            GDir = 'GDown17'
        end
    elseif GDir == 'GDown17' then
        GhostGreenCollider.y = GhostGreenCollider.y + GhostGreen.speed
        if GhostGreenCollider.y > 150 then
            GDir = 'GRight20'
        end
    elseif GDir == 'GRight20' then
        GhostGreenCollider.x = GhostGreenCollider.x + GhostGreen.speed
        if GhostGreenCollider.x > 150 then
            GDir = 'GUp20'
        end
    elseif GDir == 'GUp20' then
        GhostGreenCollider.y = GhostGreenCollider.y - GhostGreen.speed
        if GhostGreenCollider.y < 85 then
            GDir = 'GRight21'
        end
    elseif GDir == 'GRight21' then
        GhostGreenCollider.x = GhostGreenCollider.x + GhostGreen.speed
        if GhostGreenCollider.x > 225 then
            GDir = 'GDown18'
        end
    elseif GDir == 'GDown18' then
        GhostGreenCollider.y = GhostGreenCollider.y + GhostGreen.speed
        if GhostGreenCollider.y > 125 then
            GDir = 'GRight22'
        end
    elseif GDir == 'GRight22' then
        GhostGreenCollider.x = GhostGreenCollider.x + GhostGreen.speed
        if GhostGreenCollider.x > 275 then
            GDir = 'GUp21'
        end
    elseif GDir == 'GUp21' then
        GhostGreenCollider.y = GhostGreenCollider.y - GhostGreen.speed
        if GhostGreenCollider.y < 85 then
            GDir = 'GRight23'
        end
    elseif GDir == 'GRight23' then
        GhostGreenCollider.x = GhostGreenCollider.x + GhostGreen.speed 
        if GhostGreenCollider.x > 350 then
            GDir = 'GDown19'
        end
    elseif GDir == 'GDown19' then
        GhostGreenCollider.y = GhostGreenCollider.y + GhostGreen.speed
        if GhostGreenCollider.y > 125 then
            GDir = 'GRight24'
        end
    elseif GDir == 'GRight24' then
        GhostGreenCollider.x = GhostGreenCollider.x + GhostGreen.speed
        if GhostGreenCollider.x > 375 then
            GDir = 'GDown1'
        end
    end
end