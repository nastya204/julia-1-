function to_simmetric_position(robot, side)
    if isborder(robot, side)
        tolim!(robot, inverse(side))
    else
        move!(robot,side)
        to_simmetric_position(robot, side)
        move!(robot,side)
    end
end

function tolim!(robot, side)
    if !isborder(robot, side)
        move!(robot,side)
        tolim!(robot, side)
    end
end

inverse(side::HorizonSide) = HorizonSide(mod(Int(side)+2,4))