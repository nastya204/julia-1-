function marklim!(robot,side)
    if isborder(robot,side)
        putmarker!(robot)
    else
        move!(robot,side)
        marklim!(robot,side)
        move!(robot,side)
    end 
end 