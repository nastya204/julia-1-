

function try_move!(robot, direct)::Bool
    if isborder(robot, direct)
        return false
    end
    move!(robot, direct)
    return true
end

function num_borders!(robot, side)
    state = 0 
    num_borders = 0

    while try_move!(robot, side)
        if state == 0
            if isborder(robot, Nord)
                state = 1
            end
        elseif state == 1
            if !isborder(robot, Nord)
                state = 2
            end
        else 
            if !isborder(robot, Nord)
                state = 0
                num_borders += 1
            end
        end
    end
    return num_borders
end

function peregorodka_schitat!(robot)
    total = 0
    while !isborder(r, Nord)
        num_borders!(robot, Ost)
        while !isborder(r, West)
            move!(r, West)
        end
        move!(r, Nord)
        total += num_borders
    end
    return total
end