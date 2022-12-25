function tolim!(robot,side)
    if !isborder(robot,side)
        move!(robot,side)
        tolim!(robot,side)
    end
end 