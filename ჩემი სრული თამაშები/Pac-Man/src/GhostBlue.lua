GhostBlue = Class{}

function GhostBlue:init()
    self.x = 205
    self.y = 330
    self.w = 15
    self.h = 15
    self.speed = 2.5

    BDir = 'BUp1'
end

function GhostBlue:update(dt)
    if timer > 10 then
        GhostBlueMovement()
    end
end

function GhostBlueMovement()
    if BDir == 'BUp1' then
        GhostBlueCollider.y = GhostBlueCollider.y - GhostBlue.speed
        if GhostBlueCollider.y < 260 then
            BDir = 'BLeft1'
        end
    elseif BDir == 'BLeft1' then
        GhostBlueCollider.x = GhostBlueCollider.x - GhostBlue.speed
        if GhostBlueCollider.x < 105 then
            BDir = 'BUp2'
        end
    elseif BDir == 'BUp2' then
        GhostBlueCollider.y = GhostBlueCollider.y - GhostBlue.speed
        if GhostBlueCollider.y < 205 then
            BDir = 'BLeft2'
        end
    elseif BDir == 'BLeft2' then
        GhostBlueCollider.x = GhostBlueCollider.x - GhostBlue.speed
        if GhostBlueCollider.x < 30 then
            BDir = 'BUp3'
        end
    elseif BDir == 'BUp3' then
        GhostBlueCollider.y = GhostBlueCollider.y - GhostBlue.speed
        if GhostBlueCollider.y < 80 then
            BDir = 'BRight1'
        end
    elseif BDir == 'BRight1' then
        GhostBlueCollider.x = GhostBlueCollider.x + GhostBlue.speed
        if GhostBlueCollider.x > 105 then
            BDir = 'BDown1'
        end
    elseif BDir == 'BDown1' then
        GhostBlueCollider.y = GhostBlueCollider.y + GhostBlue.speed
        if GhostBlueCollider.y > 150 then
            BDir = 'BRight2'
        end
    elseif BDir == 'BRight2' then
        GhostBlueCollider.x = GhostBlueCollider.x + GhostBlue.speed
        if GhostBlueCollider.x > 155 then
            BDir = 'BUp4'
        end
    elseif BDir == 'BUp4' then
        GhostBlueCollider.y = GhostBlueCollider.y - GhostBlue.speed
        if GhostBlueCollider.y < 80 then
            BDir = 'BRight3'
        end
    elseif BDir == 'BRight3' then
        GhostBlueCollider.x = GhostBlueCollider.x + GhostBlue.speed
        if GhostBlueCollider.x > 230 then
            BDir = 'BDown2'
        end
    elseif BDir == 'BDown2' then
        GhostBlueCollider.y = GhostBlueCollider.y + GhostBlue.speed
        if GhostBlueCollider.y > 125 then
            BDir = 'BRight4'
        end
    elseif BDir == 'BRight4' then
        GhostBlueCollider.x = GhostBlueCollider.x + GhostBlue.speed
        if GhostBlueCollider.x > 280 then
            BDir = 'BUp5'
        end
    elseif BDir == 'BUp5' then
        GhostBlueCollider.y = GhostBlueCollider.y - GhostBlue.speed
        if GhostBlueCollider.y < 80 then
            BDir = 'BRight5'
        end
    elseif BDir == 'BRight5' then
        GhostBlueCollider.x = GhostBlueCollider.x + GhostBlue.speed
        if GhostBlueCollider.x > 355 then
            BDir = 'BDown3'
        end
    elseif BDir == 'BDown3' then
        GhostBlueCollider.y = GhostBlueCollider.y + GhostBlue.speed
        if GhostBlueCollider.y > 125 then
            BDir = 'BRight6'
        end
    elseif BDir == 'BRight6' then
        GhostBlueCollider.x = GhostBlueCollider.x + GhostBlue.speed
        if GhostBlueCollider.x > 380 then
            BDir = 'BDown4'
        end
    elseif BDir == 'BDown4' then 
        GhostBlueCollider.y = GhostBlueCollider.y + GhostBlue.speed
        if GhostBlueCollider.y > 375 then
            BDir = 'BRight7'
        end
    elseif BDir == 'BRight7' then
        GhostBlueCollider.x = GhostBlueCollider.x + GhostBlue.speed
        if GhostBlueCollider.x > 455 then
            BDir = 'BDown5'
        end
    elseif BDir == 'BDown5' then
        GhostBlueCollider.y = GhostBlueCollider.y + GhostBlue.speed
        if GhostBlueCollider.y > 505 then
            BDir = 'BLeft3'
        end
    elseif BDir == 'BLeft3' then
        GhostBlueCollider.x = GhostBlueCollider.x - GhostBlue.speed
        if GhostBlueCollider.x < 380 then
            BDir = 'BUp6'
        end
    elseif BDir == 'BUp6' then
        GhostBlueCollider.y = GhostBlueCollider.y - GhostBlue.speed
        if GhostBlueCollider.y < 480 then
            BDir = 'BLeft4'
        end
    elseif BDir == 'BLeft4' then
        GhostBlueCollider.x = GhostBlueCollider.x - GhostBlue.speed
        if GhostBlueCollider.x < 305 then
            BDir = 'BDown6'
        end
    elseif BDir == 'BDown6' then
        GhostBlueCollider.y = GhostBlueCollider.y + GhostBlue.speed
        if GhostBlueCollider.y > 505 then
            BDir = 'BLeft5'
        end
    elseif BDir == 'BLeft5' then
        GhostBlueCollider.x = GhostBlueCollider.x - GhostBlue.speed
        if GhostBlueCollider.x < 230 then
            BDir = 'BUp7'
        end
    elseif BDir == 'BUp7' then
        GhostBlueCollider.y = GhostBlueCollider.y - GhostBlue.speed
        if GhostBlueCollider.y < 455 then
            BDir = 'BLeft6'
        end
    elseif BDir == 'BLeft6' then
        GhostBlueCollider.x = GhostBlueCollider.x - GhostBlue.speed
        if GhostBlueCollider.x < 180 then
            BDir = 'BDown7'
        end
    elseif BDir == 'BDown7' then
        GhostBlueCollider.y = GhostBlueCollider.y + GhostBlue.speed
        if GhostBlueCollider.y > 505 then
            BDir = 'BLeft7'
        end
    elseif BDir == 'BLeft7' then
        GhostBlueCollider.x = GhostBlueCollider.x - GhostBlue.speed
        if GhostBlueCollider.x < 30 then
            BDir = 'BUp8'
        end
    elseif BDir == 'BUp8' then
        GhostBlueCollider.y = GhostBlueCollider.y - GhostBlue.speed
        if GhostBlueCollider.y < 380 then
            BDir = 'BRight8'
        end
    elseif BDir == 'BRight8' then
        GhostBlueCollider.x = GhostBlueCollider.x + GhostBlue.speed
        if GhostBlueCollider.x > 80 then
            BDir = 'BDown8'
        end
    elseif BDir == 'BDown8' then
        GhostBlueCollider.y = GhostBlueCollider.y + GhostBlue.speed
        if GhostBlueCollider.y > 455 then
            BDir = 'BRight9'
        end
    elseif BDir == 'BRight9' then
        GhostBlueCollider.x = GhostBlueCollider.x + GhostBlue.speed
        if GhostBlueCollider.x > 155 then
            BDir = 'BUp9'
        end
    elseif BDir == 'BUp9' then
        GhostBlueCollider.y = GhostBlueCollider.y - GhostBlue.speed
        if GhostBlueCollider.y < 330 then
            BDir = 'BLeft8'
        end
    elseif BDir == 'BLeft8' then
        GhostBlueCollider.x = GhostBlueCollider.x - GhostBlue.speed
        if GhostBlueCollider.x < 105 then
            BDir = 'BDown9'
        end
    elseif BDir == 'BDown9' then
        GhostBlueCollider.y = GhostBlueCollider.y + GhostBlue.speed
        if GhostBlueCollider.y > 380 then
            BDir = 'BRight10'
        end
    elseif BDir == 'BRight10' then
        GhostBlueCollider.x = GhostBlueCollider.x + GhostBlue.speed
        if GhostBlueCollider.x > 305 then
            BDir = 'BUp10'
        end
    elseif BDir == 'BUp10' then
        GhostBlueCollider.y = GhostBlueCollider.y - GhostBlue.speed
        if GhostBlueCollider.y < 180 then
            BDir = 'BRight11'
        end
    elseif BDir == 'BRight11' then
        GhostBlueCollider.x = GhostBlueCollider.x + GhostBlue.speed
        if GhostBlueCollider.x > 330 then
            BDir = 'BUp11'
        end
    elseif BDir == 'BUp11' then
        GhostBlueCollider.y = GhostBlueCollider.y - GhostBlue.speed
        if GhostBlueCollider.y < 130 then 
            BDir = 'BRight12'
        end
    elseif BDir == 'BRight12' then
        GhostBlueCollider.x = GhostBlueCollider.x + GhostBlue.speed
        if GhostBlueCollider.x > 455 then
            BDir = 'BUp12'
        end
    elseif BDir == 'BUp12' then
        GhostBlueCollider.y = GhostBlueCollider.y - GhostBlue.speed
        if GhostBlueCollider.y < 80 then
            BDir = 'BLeft9'
        end
    elseif BDir == 'BLeft9' then
        GhostBlueCollider.x = GhostBlueCollider.x - GhostBlue.speed
        if GhostBlueCollider.x < 405 then
            BDir = 'BDown10'
        end
    elseif BDir == 'BDown10' then
        GhostBlueCollider.y = GhostBlueCollider.y + GhostBlue.speed
        if GhostBlueCollider.y > 130 then
            BDir = 'BRight13'
        end
    elseif BDir == 'BRight13' then
        GhostBlueCollider.x = GhostBlueCollider.x + GhostBlue.speed
        if GhostBlueCollider.x > 425 then
            BDir = 'BDown11'
        end
    elseif BDir == 'BDown11' then 
        GhostBlueCollider.y = GhostBlueCollider.y + GhostBlue.speed
        if GhostBlueCollider.y > 205 then
            BDir = 'BLeft10'
        end
    elseif BDir == 'BLeft10' then
        GhostBlueCollider.x = GhostBlueCollider.x - GhostBlue.speed
        if GhostBlueCollider.x < 380 then
            BDir = 'BDown12'
        end
    elseif BDir == 'BDown12' then
        GhostBlueCollider.y = GhostBlueCollider.y + GhostBlue.speed
        if GhostBlueCollider.y > 225 then
            BDir = 'BLeft11'
        end
    elseif BDir == 'BLeft11' then
        GhostBlueCollider.x = GhostBlueCollider.x - GhostBlue.speed
        if GhostBlueCollider.x < 330 then
            BDir = 'BDown14'
        end
    elseif BDir == 'BDown14' then
        GhostBlueCollider.y = GhostBlueCollider.y + GhostBlue.speed
        if GhostBlueCollider.y > 325 then 
            BDir= 'BRight14'
        end
    elseif BDir == 'BRight14' then
        GhostBlueCollider.x = GhostBlueCollider.x + GhostBlue.speed
        if GhostBlueCollider.x > 475 then
            BDir = 'BUp13'
        end
    elseif BDir == "BUp13" then
        GhostBlueCollider.y = GhostBlueCollider.y - GhostBlue.speed
        if GhostBlueCollider.y < 260 then
            BDir = 'BLeft1'
        end
    end
end