GhostYellow = Class{}

function GhostYellow:init()
    self.x = 230
    self.y = 330
    self.w = 15
    self.h = 15
    self.speed = 2.5

    YDir = 'YUp1'
end

function GhostYellow:update(dt)
    if timer > 15 then
        GhostYellowMovement()
    end
end

function GhostYellowMovement()
    if YDir == 'YUp1' then
        GhostYellowCollider.y = GhostYellowCollider.y - GhostYellow.speed
        if GhostYellowCollider.y < 255 then
            YDir = 'YRight1'
        end
    elseif YDir == 'YRight1' then
        GhostYellowCollider.x = GhostYellowCollider.x + GhostYellow.speed
        if GhostYellowCollider.x > 480 then
            YDir = 'YDown1'
        end
    elseif YDir == 'YDown1' then
        GhostYellowCollider.y = GhostYellowCollider.y + GhostYellow.speed
        if GhostYellowCollider.y > 325 then
            YDir = 'YLeft1'
        end
    elseif YDir == 'YLeft1' then
        GhostYellowCollider.x = GhostYellowCollider.x - GhostYellow.speed
        if GhostYellowCollider.x < 310 then
            YDir = 'YDown2'
        end
    elseif YDir == 'YDown2' then
        GhostYellowCollider.y = GhostYellowCollider.y + GhostYellow.speed
        if GhostYellowCollider.y > 505 then
            YDir = 'YLeft2'
        end
    elseif YDir == 'YLeft2' then
        GhostYellowCollider.x = GhostYellowCollider.x - GhostYellow.speed
        if GhostYellowCollider.x < 235 then
            YDir = 'YUp2'
        end
    elseif YDir == 'YUp2' then
        GhostYellowCollider.y = GhostYellowCollider.y - GhostYellow.speed
        if GhostYellowCollider.y < 455 then
            YDir = 'YLeft3'
        end
    elseif YDir == 'YLeft3' then
        GhostYellowCollider.x = GhostYellowCollider.x - GhostYellow.speed
        if GhostYellowCollider.x < 85 then
            YDir = 'YUp3'
        end
    elseif YDir == 'YUp3' then
        GhostYellowCollider.y = GhostYellowCollider.y - GhostYellow.speed
        if GhostYellowCollider.y < 380 then
            YDir = 'YRight2'
        end
    elseif YDir == 'YRight2' then
        GhostYellowCollider.x = GhostYellowCollider.x + GhostYellow.speed
        if GhostYellowCollider.x > 300 then
            YDir = 'YLeft4'
        end
    elseif YDir == 'YLeft4' then
        GhostYellowCollider.x = GhostYellowCollider.x - GhostYellow.speed
        if GhostYellowCollider.x < 155 then
            YDir = 'YUp4'
        end
    elseif YDir == 'YUp4' then
        GhostYellowCollider.y = GhostYellowCollider.y - GhostYellow.speed
        if GhostYellowCollider.y < 255 then
            YDir = 'YLeft5'
        end
    elseif YDir == 'YLeft5' then
        GhostYellowCollider.x = GhostYellowCollider.x - GhostYellow.speed
        if GhostYellowCollider.x < 105 then
            YDir = 'YUp5'
        end
    elseif YDir == 'YUp5' then
        GhostYellowCollider.y = GhostYellowCollider.y - GhostYellow.speed
        if GhostYellowCollider.y < 205 then
            YDir = 'YRight3'
        end
    elseif YDir == 'YRight3' then
        GhostYellowCollider.x = GhostYellowCollider.x + GhostYellow.speed
        if GhostYellowCollider.x > 130 then
            YDir = 'YUp6'
        end
    elseif YDir == 'YUp6' then
        GhostYellowCollider.y = GhostYellowCollider.y - GhostYellow.speed
        if GhostYellowCollider.y < 155 then
            YDir = 'YRight4'
        end
    elseif YDir == 'YRight4' then
        GhostYellowCollider.x = GhostYellowCollider.x + GhostYellow.speed
        if GhostYellowCollider.x > 205 then
            YDir = 'YUp7'
        end
    elseif YDir == 'YUp7' then
        GhostYellowCollider.y = GhostYellowCollider.y - GhostYellow.speed
        if GhostYellowCollider.y < 130 then
            YDir = 'YRight5'
        end
    elseif YDir == 'YRight5' then
        GhostYellowCollider.x = GhostYellowCollider.x + GhostYellow.speed
        if GhostYellowCollider.x > 280 then
            YDir = 'YUp8'
        end
    elseif YDir == 'YUp8' then
        GhostYellowCollider.y = GhostYellowCollider.y - GhostYellow.speed
        if GhostYellowCollider.y < 80 then
            YDir = 'YRight6'
        end
    elseif YDir == 'YRight6' then
        GhostYellowCollider.x = GhostYellowCollider.x + GhostYellow.speed
        if GhostYellowCollider.x > 355 then
            YDir = 'YDown3'
        end
    elseif YDir == 'YDown3' then
        GhostYellowCollider.y = GhostYellowCollider.y + GhostYellow.speed
        if GhostYellowCollider.y > 125 then
            YDir = 'YLeft6'
        end
    elseif YDir == 'YLeft6' then
        GhostYellowCollider.x = GhostYellowCollider.x - GhostYellow.speed
        if GhostYellowCollider.x < 330 then
            YDir = 'YDown4'
        end
    elseif YDir == 'YDown4' then
        GhostYellowCollider.y = GhostYellowCollider.y + GhostYellow.speed
        if GhostYellowCollider.y > 180 then
            YDir = 'YLeft7'
        end
    elseif YDir == 'YLeft7' then
        GhostYellowCollider.x = GhostYellowCollider.x - GhostYellow.speed
        if GhostYellowCollider.x < 305 then
            YDir = 'YDown5'
        end
    elseif YDir == 'YDown5' then
        GhostYellowCollider.y = GhostYellowCollider.y + GhostYellow.speed
        if GhostYellowCollider.y > 230 then
            YDir = 'YRight7'
        end
    elseif YDir == 'YRight7' then
        GhostYellowCollider.x = GhostYellowCollider.x + GhostYellow.speed
        if GhostYellowCollider.x > 380 then
            YDir = 'YUp9'
        end
    elseif YDir == 'YUp9' then
        GhostYellowCollider.y = GhostYellowCollider.y - GhostYellow.speed
        if GhostYellowCollider.y < 125 then
            YDir = 'YDown6'
        end
    elseif YDir == 'YDown6' then
        GhostYellowCollider.y = GhostYellowCollider.y + GhostYellow.speed
        if GhostYellowCollider.y > 380 then
            YDir = 'YRight8'
        end
    elseif YDir == 'YRight8' then
        GhostYellowCollider.x = GhostYellowCollider.x + GhostYellow.speed
        if GhostYellowCollider.x > 405 then
            YDir = 'YDown7'
        end
    elseif YDir == 'YDown7' then
        GhostYellowCollider.y = GhostYellowCollider.y + GhostYellow.speed
        if GhostYellowCollider.y > 430 then
            YDir = 'YRight9'
        end
    elseif YDir == 'YRight9' then
        GhostYellowCollider.x = GhostYellowCollider.x + GhostYellow.speed
        if GhostYellowCollider.x > 455 then
            YDir = 'YDown8'
        end
    elseif YDir == 'YDown8' then
        GhostYellowCollider.y = GhostYellowCollider.y + GhostYellow.speed
        if GhostYellowCollider.y > 505 then
            YDir = 'YLeft8'
        end
    elseif YDir == 'YLeft8' then
        GhostYellowCollider.x = GhostYellowCollider.x - GhostYellow.speed
        if GhostYellowCollider.x < 380 then
            YDir = 'YUp10'
        end
    elseif YDir == 'YUp10' then
        GhostYellowCollider.y = GhostYellowCollider.y - GhostYellow.speed
        if GhostYellowCollider.y < 430 then
            YDir = 'YLeft9'
        end
    elseif YDir == 'YLeft9' then
        GhostYellowCollider.x = GhostYellowCollider.x - GhostYellow.speed
        if GhostYellowCollider.x < 355 then
            YDir = 'YUp11'
        end
    elseif YDir == 'YUp11' then 
        GhostYellowCollider.y = GhostYellowCollider.y - GhostYellow.speed
        if GhostYellowCollider.y < 380 then 
            YDir = 'YLeft10'
        end 
    elseif YDir == 'YLeft10' then
        GhostYellowCollider.x = GhostYellowCollider.x - GhostYellow.speed
        if GhostYellowCollider.x < 30 then
            YDir = 'YDown9'
        end
    elseif YDir == 'YDown9' then
        GhostYellowCollider.y = GhostYellowCollider.y + GhostYellow.speed
        if GhostYellowCollider.y > 505 then
            YDir = 'YRight10'
        end
    elseif YDir == 'YRight10' then
        GhostYellowCollider.x = GhostYellowCollider.x + GhostYellow.speed
        if GhostYellowCollider.x > 180 then
            YDir = 'YUp12' 
        end
    elseif YDir == 'YUp12' then
        GhostYellowCollider.y = GhostYellowCollider.y - GhostYellow.speed
        if GhostYellowCollider.y < 455 then
            YDir = 'YLeft11'
        end
    elseif YDir == 'YLeft11' then
        GhostYellowCollider.x = GhostYellowCollider.x - GhostYellow.speed
        if GhostYellowCollider.x < 155 then
            YDir = 'YUp13'
        end
    elseif YDir == 'YUp13' then
        GhostYellowCollider.y = GhostYellowCollider.y - GhostYellow.speed
        if GhostYellowCollider.y < 330 then
            YDir = 'YLeft12' 
        end
    elseif YDir == 'YLeft12' then
        GhostYellowCollider.x = GhostYellowCollider.x - GhostYellow.speed
        if GhostYellowCollider.x < 5 then
            YDir = 'YUp14'
        end
    elseif YDir == 'YUp14' then
        GhostYellowCollider.y = GhostYellowCollider.y - GhostYellow.speed
        if GhostYellowCollider.y < 280 then
            YDir = 'YRight11'
        end
    elseif YDir == 'YRight11' then
        GhostYellowCollider.x = GhostYellowCollider.x + GhostYellow.speed
        if GhostYellowCollider.x > 105 then
            YDir = 'YUp15'
        end
    elseif YDir == 'YUp15' then
        GhostYellowCollider.y = GhostYellowCollider.y - GhostYellow.speed
        if GhostYellowCollider.y < 205 then
            YDir = 'YLeft13'
        end
    elseif YDir == 'YLeft13' then
        GhostYellowCollider.x = GhostYellowCollider.x - GhostYellow.speed
        if GhostYellowCollider.x < 30 then
            YDir = 'YUp16'
        end
    elseif YDir == 'YUp16' then
        GhostYellowCollider.y = GhostYellowCollider.y - GhostYellow.speed
        if GhostYellowCollider.y < 80 then
            YDir = 'YRight12'
        end
    elseif YDir == 'YRight12' then
        GhostYellowCollider.x = GhostYellowCollider.x + GhostYellow.speed 
        if GhostYellowCollider.x > 105 then
            YDir = 'YDown10'
        end
    elseif YDir == 'YDown10' then
        GhostYellowCollider.y = GhostYellowCollider.y + GhostYellow.speed
        if GhostYellowCollider.y > 155 then
            YDir = 'YRight13'
        end
    elseif YDir == 'YRight13' then
        GhostYellowCollider.x = GhostYellowCollider.x + GhostYellow.speed
        if GhostYellowCollider.x > 155 then
            YDir = 'YUp17' 
        end
    elseif YDir == "YUp17" then
        GhostYellowCollider.y = GhostYellowCollider.y - GhostYellow.speed
        if GhostYellowCollider.y < 80 then
            YDir = 'YRight14'
        end
    elseif YDir == 'YRight14' then
        GhostYellowCollider.x = GhostYellowCollider.x + GhostYellow.speed
        if GhostYellowCollider.x > 230 then
            YDir = 'YDown11'
        end
    elseif YDir == 'YDown11' then
        GhostYellowCollider.y = GhostYellowCollider.y + GhostYellow.speed
        if GhostYellowCollider.y > 130 then
            YDir = 'YRight15'
        end
    elseif YDir == 'YRight15' then
        GhostYellowCollider.x = GhostYellowCollider.x + GhostYellow.speed
        if GhostYellowCollider.x > 255 then
            YDir = 'YDown12'
        end
    elseif YDir == 'YDown12' then
        GhostYellowCollider.y = GhostYellowCollider.y + GhostYellow.speed
        if GhostYellowCollider.y > 205 then
            YDir = 'YLeft14'
        end
    elseif YDir == 'YLeft14' then
        GhostYellowCollider.x = GhostYellowCollider.x - GhostYellow.speed
        if GhostYellowCollider.x < 185 then
            YDir = 'YDown13'
        end
    elseif YDir == 'YDown13' then
        GhostYellowCollider.y = GhostYellowCollider.y + GhostYellow.speed 
        if GhostYellowCollider.y > 255 then
            YDir = 'YRight1'
        end
    end
end