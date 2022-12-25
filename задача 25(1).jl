function chess!(r, side)
    if !isborder(r, side)
        move!(r, side)
        putmarker!(r)
        chess2!(r, side)
    end
end

function chess2!(r, side)
    if !isborder(r, side)
        move!(r, side)
        chess!(r, side)
    end
end