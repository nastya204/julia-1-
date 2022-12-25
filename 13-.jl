function snake!(stop_condition::Function, robot, (move_side,next_row_side)::NTuple{2,HorizonSide}=(Nord, Ost))
    along!(stop_condition(move_side), robot, move_side)
    while !stop_condition(move_side) && try_move!(robot, next_row_side)
        move_side = inverse(move_side)
        along!(stop_condition(move_side), robot, move_side)
    end
end