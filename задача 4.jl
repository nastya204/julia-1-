r = Robot(11,11;animate=true)

function coss_crest!(robot)
    for side in (Nord, Sud, Ost, West)
        count = 0
        while !isborder(r, side) && !isborder(r, HorizonSide(mod(Int(side)+3, 4)))
            putmarker!(robot)
            move!(robot, side)
            move!(robot, HorizonSide(mod(Int(side)+3, 4)))
            putmarker!(robot)
            count +=1
        end
        for i in 1:count
            move!(robot, inverse(HorizonSide(mod(Int(side)+3,4))))
            
            move!(robot, inverse(HorizonSide(mod(Int(side)+3, 4))))
        end
    end
end
inverse(side::HorizonSide) = HorizonSide(mod(Int(side)+3,4))

