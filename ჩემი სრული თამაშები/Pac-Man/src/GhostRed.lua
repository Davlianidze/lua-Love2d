GhostRed = Class{}

function GhostRed:init()
    self.x = 230
    self.y = 310
    self.w = 15
    self.h = 15
    self.speed = 2.5

    RDir = 'RUp1'
end

function GhostRed:update(dt)
    GhostMovement()
end

function GhostMovement()
   if RDir == "RUp1" then
      GhostRedCollider.y = GhostRedCollider.y - GhostRed.speed
      if GhostRedCollider.y < 205 then
         RDir = "RRight2"
      end
    elseif RDir == 'RRight2' then
        GhostRedCollider.x = GhostRedCollider.x + GhostRed.speed
        if GhostRedCollider.x > 255 then
            RDir = 'RUp2'
        end 
    elseif RDir == 'RUp2' then
        GhostRedCollider.y = GhostRedCollider.y - GhostRed.speed
        if GhostRedCollider.y < 130 then
            RDir = 'RLeft1' 
        end
    elseif RDir == 'RLeft1' then 
        GhostRedCollider.x = GhostRedCollider.x - GhostRed.speed
        if GhostRedCollider.x < 205 then
            RDir = 'RDown1'
        end
   elseif RDir == 'RDown1' then 
        GhostRedCollider.y = GhostRedCollider.y + GhostRed.speed
        if GhostRedCollider.y > 155 then
            RDir = 'RLeft2' 
        end 
    elseif RDir == 'RLeft2' then
        GhostRedCollider.x = GhostRedCollider.x - GhostRed.speed
        if GhostRedCollider.x < 30 then
            RDir = 'RUp3'
        end
    elseif RDir == 'RUp3' then
        GhostRedCollider.y = GhostRedCollider.y - GhostRed.speed
        if GhostRedCollider.y < 80 then
            RDir = 'RRight3'
        end
    elseif RDir == 'RRight3' then
        GhostRedCollider.x = GhostRedCollider.x + GhostRed.speed
        if GhostRedCollider.x > 105 then
            RDir = 'RDown2'
        end
    elseif RDir == 'RDown2' then
        GhostRedCollider.y = GhostRedCollider.y + GhostRed.speed
        if GhostRedCollider.y > 155 then
            RDir = 'RRight4'
        end
    elseif RDir == 'RRight4' then
        GhostRedCollider.x = GhostRedCollider.x + GhostRed.speed
        if GhostRedCollider.x > 125 then
            RDir = 'RDown3' 
        end
    elseif RDir == 'RDown3' then
        GhostRedCollider.y = GhostRedCollider.y + GhostRed.speed
        if GhostRedCollider.y > 200 then
            RDir = 'RLeft3'
        end
    elseif RDir == 'RLeft3' then
        GhostRedCollider.x = GhostRedCollider.x - GhostRed.speed
        if GhostRedCollider.x < 30 then
            RDir = 'RUp4'
        end
    elseif RDir == 'RUp4' then
        GhostRedCollider.y = GhostRedCollider.y - GhostRed.speed
        if GhostRedCollider.y < 155 then
            RDir = 'RRight5'
        end
    elseif RDir == 'RRight5' then
        GhostRedCollider.x = GhostRedCollider.x + GhostRed.speed
        if GhostRedCollider.x > 155 then
            RDir = 'RUp5'
        end
    elseif RDir == 'RUp5' then
        GhostRedCollider.y = GhostRedCollider.y - GhostRed.speed
        if GhostRedCollider.y < 80 then
            RDir = 'RRight6'
        end
    elseif RDir == 'RRight6' then 
        GhostRedCollider.x = GhostRedCollider.x + GhostRed.speed
        if GhostRedCollider.x > 230 then
            RDir = 'RDown4'
        end
     elseif RDir == 'RDown4' then
        GhostRedCollider.y = GhostRedCollider.y + GhostRed.speed
        if GhostRedCollider.y > 130 then
            RDir = 'RRight7'
        end
    elseif RDir == 'RRight7' then
        GhostRedCollider.x = GhostRedCollider.x + GhostRed.speed
        if GhostRedCollider.x > 450 then
            RDir = 'RUp6'
        end
    elseif RDir == 'RUp6' then
        GhostRedCollider.y = GhostRedCollider.y - GhostRed.speed
        if GhostRedCollider.y < 80 then
            RDir = 'RLeft4'
        end
    elseif RDir == 'RLeft4' then
        GhostRedCollider.x = GhostRedCollider.x - GhostRed.speed
        if GhostRedCollider.x < 410 then
            RDir = 'RDown5'
        end
    elseif RDir == 'RDown5' then
        GhostRedCollider.y = GhostRedCollider.y + GhostRed.speed
        if GhostRedCollider.y > 130 then
            RDir = 'RRight8'
        end
   elseif RDir == 'RRight8' then
        GhostRedCollider.x = GhostRedCollider.x + GhostRed.speed
        if GhostRedCollider.x > 430 then
            RDir = 'RDown6' 
        end
    elseif RDir == 'RDown6' then
        GhostRedCollider.y = GhostRedCollider.y + GhostRed.speed
        if GhostRedCollider.y > 205 then 
            RDir = 'RRight9' 
        end
    elseif RDir == 'RRight9' then
        GhostRedCollider.x = GhostRedCollider.x + GhostRed.speed
        if GhostRedCollider.x > 455 then
            RDir = 'RUp7' 
        end
    elseif RDir == 'RUp7' then
        GhostRedCollider.y = GhostRedCollider.y - GhostRed.speed
        if GhostRedCollider.y < 175 then
            RDir = 'RDown7' 
        end
    elseif RDir == 'RDown7' then
        GhostRedCollider.y = GhostRedCollider.y + GhostRed.speed
        if GhostRedCollider.y > 205 then
            RDir = 'RLeft5' 
        end
    elseif RDir == 'RLeft5' then
        GhostRedCollider.x = GhostRedCollider.x - GhostRed.speed
        if GhostRedCollider.x < 385 then
            RDir = 'RUp8' 
        end
    elseif RDir == 'RUp8' then
        GhostRedCollider.y = GhostRedCollider.y - GhostRed.speed
        if GhostRedCollider.y < 135 then
            RDir = 'RLeft6' 
        end
    elseif RDir == 'RLeft6' then
        GhostRedCollider.x = GhostRedCollider.x - GhostRed.speed
        if GhostRedCollider.x < 355 then
            RDir = 'RUp9'
        end
     elseif RDir == 'RUp9' then
        GhostRedCollider.y = GhostRedCollider.y - GhostRed.speed
        if GhostRedCollider.y < 85 then
            RDir = 'RLeft7'
        end
    elseif RDir == 'RLeft7' then
        GhostRedCollider.x = GhostRedCollider.x - GhostRed.speed
        if GhostRedCollider.x < 280 then
            RDir = 'RDown8' 
        end
    elseif RDir == 'RDown8' then
        GhostRedCollider.y = GhostRedCollider.y + GhostRed.speed
        if GhostRedCollider.y > 125 then
            RDir = 'RRight10'
        end
    elseif RDir == 'RRight10' then 
        GhostRedCollider.x = GhostRedCollider.x + GhostRed.speed
        if GhostRedCollider.x > 330 then
            RDir = 'RDown9'
        end
    elseif RDir == 'RDown9' then
        GhostRedCollider.y = GhostRedCollider.y + GhostRed.speed
        if GhostRedCollider.y > 175 then
            RDir = 'RLeft8'
        end
    elseif RDir == 'RLeft8' then 
        GhostRedCollider.x = GhostRedCollider.x - GhostRed.speed
        if GhostRedCollider.x < 305 then
            RDir = 'RDown10' 
        end
    elseif RDir == 'RDown10' then
        GhostRedCollider.y = GhostRedCollider.y + GhostRed.speed
        if GhostRedCollider.y > 505 then
            RDir = 'RLeft9' 
        end
    elseif RDir == 'RLeft9' then
        GhostRedCollider.x = GhostRedCollider.x - GhostRed.speed
        if GhostRedCollider.x < 235 then
            RDir = 'RUp10' 
        end 
    elseif RDir == 'RUp10' then
        GhostRedCollider.y = GhostRedCollider.y - GhostRed.speed
        if GhostRedCollider.y < 455 then
            RDir = 'RLeft10' 
        end
    elseif RDir == 'RLeft10' then
        GhostRedCollider.x = GhostRedCollider.x - GhostRed.speed
        if GhostRedCollider.x < 80 then
            RDir = 'RUp11' 
        end
    elseif RDir == 'RUp11' then
        GhostRedCollider.y = GhostRedCollider.y - GhostRed.speed
        if GhostRedCollider.y < 380 then
            RDir = 'RRight11' 
        end
    elseif RDir == 'RRight11' then
        GhostRedCollider.x = GhostRedCollider.x + GhostRed.speed
        if GhostRedCollider.x > 450 then
            RDir = 'RDown11' 
        end
    elseif RDir == 'RDown11' then
        GhostRedCollider.y = GhostRedCollider.y + GhostRed.speed
        if GhostRedCollider.y > 505 then
            RDir = 'RLeft11' 
        end
    elseif RDir == 'RLeft11' then
        GhostRedCollider.x = GhostRedCollider.x - GhostRed.speed
        if GhostRedCollider.x < 385 then
            RDir = 'RUp12' 
        end
    elseif RDir == 'RUp12' then
        GhostRedCollider.y = GhostRedCollider.y - GhostRed.speed
        if GhostRedCollider.y < 435 then
            RDir = 'RLeft12' 
        end
    elseif RDir == 'RLeft12' then
        GhostRedCollider.x = GhostRedCollider.x - GhostRed.speed
        if GhostRedCollider.x < 355 then
            RDir = 'RUp13'
        end
    elseif RDir == 'RUp13' then
        GhostRedCollider.y = GhostRedCollider.y - GhostRed.speed
        if GhostRedCollider.y < 385 then
            RDir = 'RRight12'
        end
    elseif RDir == 'RRight12' then
        GhostRedCollider.x = GhostRedCollider.x + GhostRed.speed
        if GhostRedCollider.x > 380 then
            RDir = 'RUp14'
        end
    elseif RDir == 'RUp14' then
        GhostRedCollider.y = GhostRedCollider.y - GhostRed.speed
        if GhostRedCollider.y < 235 then
            RDir = 'RLeft13'
        end
    elseif RDir == 'RLeft13' then
        GhostRedCollider.x = GhostRedCollider.x - GhostRed.speed
        if GhostRedCollider.x < 305 then
            RDir = 'RDown12' 
        end
    elseif RDir == 'RDown12' then
        GhostRedCollider.y = GhostRedCollider.y + GhostRed.speed
        if GhostRedCollider.y > 325 then
            RDir = 'RRight13' 
        end
    elseif RDir == 'RRight13' then
        GhostRedCollider.x = GhostRedCollider.x + GhostRed.speed
        if GhostRedCollider.x > 475 then
            RDir = 'RUp15'
        end
    elseif RDir == 'RUp15' then
        GhostRedCollider.y = GhostRedCollider.y - GhostRed.speed
        if GhostRedCollider.y < 260 then 
            RDir = 'RLeft14'
        end
    elseif RDir == 'RLeft14' then
        GhostRedCollider.x = GhostRedCollider.x - GhostRed.speed
        if GhostRedCollider.x < 10 then 
            RDir = 'RDown13'
        end
    elseif RDir == 'RDown13' then
        GhostRedCollider.y = GhostRedCollider.y + GhostRed.speed
        if GhostRedCollider.y > 325 then
            RDir = 'RRight14'
        end
    elseif RDir == 'RRight14' then
        GhostRedCollider.x = GhostRedCollider.x + GhostRed.speed
        if GhostRedCollider.x > 150 then
            RDir = 'RDown14' 
        end
    elseif RDir == 'RDown14' then
        GhostRedCollider.y = GhostRedCollider.y + GhostRed.speed
        if GhostRedCollider.y > 450 then
            RDir = 'RRight15' 
        end
    elseif RDir == 'RRight15' then
        GhostRedCollider.x = GhostRedCollider.x + GhostRed.speed
        if GhostRedCollider.x > 180 then
            RDir = 'RDown15'
        end
    elseif RDir == 'RDown15' then
        GhostRedCollider.y = GhostRedCollider.y + GhostRed.speed
        if GhostRedCollider.y > 500 then
            RDir = 'RLeft15'
        end
    elseif RDir == 'RLeft15' then
        GhostRedCollider.x = GhostRedCollider.x - GhostRed.speed
        if GhostRedCollider.x < 30 then
            RDir = 'RUp16'
        end
    elseif RDir == 'RUp16' then
        GhostRedCollider.y = GhostRedCollider.y - GhostRed.speed
        if GhostRedCollider.y < 385 then
            RDir = 'RRight16'
        end
    elseif RDir == 'RRight16' then
        GhostRedCollider.x = GhostRedCollider.x + GhostRed.speed
        if GhostRedCollider.x > 100 then
            RDir = 'RUp17'
        end
    elseif RDir == 'RUp17' then
        GhostRedCollider.y = GhostRedCollider.y - GhostRed.speed
        if GhostRedCollider.y < 260 then
            RDir = 'RRight17'
        end
    elseif RDir == 'RRight17' then
        GhostRedCollider.x = GhostRedCollider.x + GhostRed.speed
        if GhostRedCollider.x > 225 then
            RDir = 'RUp1'
        end
    end
end