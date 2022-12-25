function start!(robot)
    side = Nord
    n = 0
    while true
        while !isborder(robot,side)
            if !ismarker(robot) && n == 0
                putmarker!(robot)
                move!(robot, side)
                n = 1
            else
                n = 0
                move!(robot, side)
            end
        end
        side = inverse(robot,side)
        if !ismarker(robot) && n == 0
            putmarker!(robot)
            move!(robot, side)
            n = 1
        else
            n = 0
            move!(robot, side)
        end
        side = inverse(robot,side)
        if !ismarker(robot) && n == 0
            putmarker!(robot)
            move!(robot, side)
            n = 1
        else
            n = 0
            move!(robot, side)
        end
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