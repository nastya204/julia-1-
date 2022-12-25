function  glav(r)
    side = Ost
    r = gh(r,side)
    putmarker!(r)
    p = nachalo(r,side)
    putmarker!(r)
    d = gh(r,side)
    putmarker!(r)
    side = inverse(side)
    f = gh(r,side)
    putmarker!(r)
    side = inverse(side)
    s = gh(r,side)
    putmarker!(r)
    side = inverse(side)
    u = gh(r,side)
end

function gh(r,side)
    while !isborder(r,side)
        move!(r,side)
        putmarker!(r)
    end
end

function inverse(side)
    if side == Ost 
        return Nord 
    elseif side == Nord
        return West 
    elseif side == West 
        return Sud 
    elseif side == Sud
        return Ost
    end
end

function nachalo(r,side)
    side  == Sud
    if ismarker(r)
        while !isborder(r,side)
            move!(r,Ost)
        end 
    
    else
        while !isborder(r,side)
            move!(r,side)
        end
        while !isborder(r,side)
            move!(r,side)
        end
    end 
    
end
