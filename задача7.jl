function try_move!(robot,direct)
    if !isborder(robot,direct)
        move!(robot,direct)
        return true
    end 
end 

function along!(robot,side,max_num_steps)
    num_steps = 0
    while num_steps < max_num_steps && try_move!(robot,side)
        num_steps+=1
        if !isborder(robot,Nord)
            return 1
        end 
    end 
    return 0
end 


function start!(robot)
    side = Ost
    n = 0
    while isborder(robot,Nord)
        stop = along!(robot,side,n)
        if stop == 0
            side = inverse(side)
            n+=1
        else
            return 
        end 
    end 
end 

function inverse(side)
    if side == Ost
        return West
    elseif side == Ost
        return West
    elseif side == West
        return Ost
    end 
end 