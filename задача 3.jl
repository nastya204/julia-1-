function perimetr!(r)
    #n = 0
    #putmarkers!(r)
    putmarker!(r)
    side = Ost
    putmarkers!(r,side)
    while !isborder(r,Nord)
        putmarker!(r)
        move!(r,Nord)
        putmarker!(r)
        side = inverse(side)
        #n +=1
        putmarkers!(r,side)
    end
    return n
end 

function putmarkers!(r,side)
    while !isborder(r,side)
        putmarker!(r)
        move!(r,side)
        putmarker!(r)
    end
end


function inverse(side)
    if side == Nord 
        return Sud
    elseif side == Sud 
        return Nord 
    elseif side == Ost 
        return West 
    elseif side == West
        return Ost
    end
end 