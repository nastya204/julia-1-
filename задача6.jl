function dvig!(robot)
    side = West
    for i in 0:4
        try_move!(robot,side)
        side = left(side)
    end 
    krug!(robot)
end



function try_move!(robot,side)
    while !isborder(robot,side)
        move!(robot,side)
    end 
end 


function left(side)
    if side == Sud
        return West
    elseif side == West
        return Sud
    elseif side == Ost
        return West
    end 
end 