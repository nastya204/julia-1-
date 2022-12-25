function mark_cross!(robot)
    for side in (Nord,West,Sud,Ost)
        putmarkers!(robot,side)
        move_by_markers(r,inverse(side))
    end 
    putmarker!(robot)
end 

putmarkers!(robot::Robot,side::HorizonSide) = 
    while isborder(r,side) == false
        move!(robot,side)
        putmarker!(r)
    end 


move_by_markers(robot::Robot,side::HorizonSide) = 
    while ismarker(robot) == true
        move!(robot,side)
    end 


inverse(side::HorizonSide) = HorizonSide(mod(Int(side)+2,4))