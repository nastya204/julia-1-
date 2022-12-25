function snake(robot)
    side = Nord 
    while !ismarker(robot)
        while !isborder(robot,side)
            "if ismarker(robot)
                break"
        move!(robot,side)
        end 
        side = inverse(robot,side)
        move!(robot,side)
        side = inverse(robot,side)
        end
        
    end 

function inverse(robot,side)
    if side == Nord 
        return Ost
    elseif side == Ost && isborder(robot,Nord)
        return Sud 
    elseif side == Ost && isborder(robot,Sud)
        return Nord
    elseif side == Ost
        return Nord
    elseif side == Sud
        return Ost
    end 
end 
