function pryamo!(robot,side)
    while !isborder(robot,side)
        move!(robot,side)
    end 
    pryamo!(robot,side)
end 

