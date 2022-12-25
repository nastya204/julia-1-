function shahmat!(robot)
    side = Nord 
    while !isborder(robot,side)
    shahmat_vverh!(robot)
    side = inverse(side)
    shahmat_vniz!(robot)
    end
end  



function shahmat_vniz!(robot)
    side = Sud 
    while !isborder(robot,side)
        putmarker!(robot)
        move!(robot,side)
        move!(robot,side)
        putmarker!(robot)
    end 
end 

function shahmat_vverh!(robot)
    side = Nord 
    while !isborder(robot,side)
        putmarker!(robot)
        move!(robot,side)
        move!(robot,side)
        putmarker!(robot)
    end 
end 

function inverse(side)
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