function krug!(robot)
    for side in (Nord,Ost,Sud,West)
        while !isborder(robot,side)
            move!(robot,side)
            putmarker!(robot)
        end 
    end 

function try_move!(robot, direct)
    if isborder(robot, direct)
        return false
    else
        return true
    end
end

function krug2!(robot)
    while isborder(robot, Ost)
        move!(robot,Nord)

    end
    move!(robot, Ost)
    putmarker!(robot)

    while isborder(robot, Sud)
        move!(robot,Ost)
        putmarker!(robot)

    end
    move!(robot, Sud)
    putmarker!(robot)

    while isborder(robot, West)
        move!(robot,Sud)
        putmarker!(robot)

    end
    move!(robot, West)
    putmarker!(robot)

    while isborder(robot, Nord)
        move!(robot,West)
        putmarker!(robot)
    end
    move!(robot, Nord)
    putmarker!(robot)

    while isborder(robot, Ost)
        move!(robot,Nord)
        putmarker!(robot)
    end
end

    side = Nord 


    while true
        while !isborder(robot,side)
            move!(robot,side)
            if isborder(robot, Ost)
                krug2!(robot)
                side = Nord
            end
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
