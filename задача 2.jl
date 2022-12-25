function krug!(robot)
    for side in (Nord,Ost,Sud,West)
        while !isborder(robot,side)
            move!(robot,side)
            putmarker!(robot)
        end 
    end 
end 