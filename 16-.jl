function spiral!(stop_condition::Function, robot, side = Nord)
    along!(side, n) = along!(() -> stop_condition(side), robot, side, n)
    n=1
    while !stop_condition(side)
        along!(side, n)
        if stop_condition(side)
            continue
        end
        side = left(side)
        along!(side, n)
        if stop_condition(side)
            continue
        end
        side = left(side)
        n += 1
    end
end